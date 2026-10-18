// Dumps the pages and component attributes of a Nextion .HMI project as json (uses ext/nextion-hmi-format).
const fs=require('fs');
const path=require('path');
const R=path.join(__dirname,'..','..','nextion-hmi-format','lib')+path.sep;
const C=require(R+'container'),PAGE=require(R+'page');
const buf=fs.readFileSync(process.argv[2]);
const out=[];
for(const e of C.liveEntries(buf)){
  if(!e.name||!e.name.endsWith('.pa'))continue;
  const p=PAGE.parse(buf.subarray(e.off,e.off+e.size));
  const objs=p.objs.map((o,i)=>{const a={};for(const it of o.items)if(it.kind==='attr')a[it.key]=(it.raw.length>4||typeof it.value==='string')?{s:it.value}:{v:it.value,n:it.raw.length};return {i,marker:PAGE.marker(o),attrs:a};});
  out.push({page:parseInt(e.name),name:p.name,objs});
}
out.sort((a,b)=>a.page-b.page);
console.log(JSON.stringify(out));
