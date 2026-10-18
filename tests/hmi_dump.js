// Dumps the pages of a Nextion .HMI project as json: per component the attributes and the event source lines
// (uses ext/nextion-hmi-format).
const fs=require('fs');
const path=require('path');
const R=path.join(__dirname,'..','..','nextion-hmi-format','lib')+path.sep;
const C=require(R+'container'),PAGE=require(R+'page');
const buf=fs.readFileSync(process.argv[2]);
const out=[];
for(const e of C.liveEntries(buf)){
  if(!e.name||!e.name.endsWith('.pa'))continue;
  const p=PAGE.parse(buf.subarray(e.off,e.off+e.size));
  const objs=p.objs.map((o,i)=>{
    const a={},events={};
    const items=o.items;
    for(let k=0;k<items.length;k++){
      const it=items[k];
      if(it.kind==='mark'){
        const m=/^(codes\w+?)-(\d+)$/.exec(it.text);
        if(m){const n=+m[2],lines=[];
          for(let j=1;j<=n&&k+j<items.length;j++){const x=items[k+j]; lines.push(x.kind==='attr'?x.key+x.raw.toString('latin1'):(x.text||''));}
          events[m[1]]=lines; k+=n;}
      } else if(it.kind==='attr'){
        if(/^[a-z_0-9]+$/.test(it.key)) a[it.key]=(it.raw.length>4||typeof it.value==='string')?{s:it.value}:{v:it.value,n:it.raw.length};
      }
    }
    return {i,attrs:a,events};
  });
  out.push({page:parseInt(e.name),name:p.name,objs});
}
out.sort((a,b)=>a.page-b.page);
console.log(JSON.stringify(out));
