all_instruction_sets = [
    {
        'versions': [
            'nxt-0.58',
        ],
        'models': {
            0: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'sendme', 'draw_h',
                        'printh', 'strlen', 'showqq', 'substr', 'prints', 'pa_txt', 'udelete', 'strsize', 'touch_j',
                        'randset', 'lcd_dev', 'lhmi_cle', 'whmi_cle', 'setbrush', 'ref_stop', 'com_stop', 'ref_star',
                        'com_star', 'doevents', 'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'fill', 'pa_q', 'picq', 'fstr', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init', 'rfpt', 'wfpt',
                        'rest', 'draw', 'covx',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'RED', 'thc', 'dim', 'wup', 'sya0', 'tch0', 'sys0', 'sya1', 'tch1', 'sys1', 'tch2',
                        'sys2', 'tch3', 'BLUE', 'GRAY', 'rand', 'baud', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims',
                        'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'bauds',
                        'delay', 'YELLOW', 'recmod', 'runmod', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            1: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'sendme', 'draw_h',
                        'printh', 'strlen', 'cfgpio', 'showqq', 'substr', 'prints', 'pa_txt', 'udelete', 'strsize',
                        'touch_j', 'randset', 'lcd_dev', 'lhmi_cle', 'whmi_cle', 'setbrush', 'ref_stop', 'com_stop',
                        'ref_star', 'com_star', 'doevents', 'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'fill', 'repo', 'wepo', 'pa_q', 'picq', 'fstr', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init',
                        'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'RED', 'thc', 'dim', 'wup', 'sya0', 'rtc0', 'tch0', 'pio0', 'sys0', 'sya1', 'rtc1',
                        'tch1', 'pio1', 'sys1', 'rtc2', 'tch2', 'pio2', 'sys2', 'rtc3', 'tch3', 'pio3', 'rtc4', 'pwm4',
                        'pio4', 'rtc5', 'pwm5', 'pio5', 'rtc6', 'pwm6', 'pio6', 'pwm7', 'pio7', 'BLUE', 'GRAY', 'rand',
                        'baud', 'pwmf', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'bauds',
                        'delay', 'YELLOW', 'recmod', 'runmod', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            2: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'redir', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'rdfile',
                        'refile', 'twfile', 'sendme', 'draw_h', 'printh', 'strlen', 'cfgpio', 'showqq', 'deldir',
                        'newdir', 'substr', 'prints', 'pa_txt', 'delfile', 'newfile', 'udelete', 'strsize', 'touch_j',
                        'finddir', 'randset', 'lcd_dev', 'lhmi_cle', 'whmi_cle', 'findfile', 'setbrush', 'ref_stop',
                        'com_stop', 'ref_star', 'com_star', 'setlayer', 'doevents', 'timerset', 'getpassw', 'lcd_refx',
                        'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'move', 'fill', 'repo', 'wepo', 'pa_q', 'picq', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init',
                        'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx', 'play',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'eq0', 'eq1', 'eq2', 'eq3', 'eq4', 'eq5', 'eq6', 'eq7', 'eq8', 'eq9', 'RED', 'thc', 'aph',
                        'eqh', 'eql', 'dim', 'eqm', 'wup', 'sya0', 'tch0', 'sys0', 'sya1', 'tch1', 'sys1', 'tch2',
                        'sys2', 'tch3', 'BLUE', 'GRAY', 'tprc', 'rand', 'baud', 'thsp', 'ussp', 'thup', 'usup', 'addr',
                        'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'bauds',
                        'delay', 'audio0', 'audio1', 'YELLOW', 'recmod', 'runmod', 'volume', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            3: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'redir', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'rdfile',
                        'refile', 'twfile', 'sendme', 'draw_h', 'printh', 'strlen', 'cfgpio', 'showqq', 'deldir',
                        'newdir', 'substr', 'prints', 'pa_txt', 'delfile', 'newfile', 'udelete', 'strsize', 'touch_j',
                        'finddir', 'randset', 'lcd_dev', 'lhmi_cle', 'whmi_cle', 'findfile', 'setbrush', 'ref_stop',
                        'com_stop', 'ref_star', 'com_star', 'setlayer', 'doevents', 'timerset', 'getpassw', 'lcd_refx',
                        'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'move', 'fill', 'repo', 'wepo', 'pa_q', 'picq', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init',
                        'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx', 'play',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'eq0', 'eq1', 'eq2', 'eq3', 'eq4', 'eq5', 'eq6', 'eq7', 'eq8', 'eq9', 'RED', 'thc', 'aph',
                        'eqh', 'eql', 'dim', 'eqm', 'wup', 'sya0', 'rtc0', 'tch0', 'pio0', 'sys0', 'sya1', 'rtc1',
                        'tch1', 'pio1', 'sys1', 'rtc2', 'tch2', 'pio2', 'sys2', 'rtc3', 'tch3', 'pio3', 'rtc4', 'pwm4',
                        'pio4', 'rtc5', 'pwm5', 'pio5', 'rtc6', 'pwm6', 'pio6', 'pwm7', 'pio7', 'BLUE', 'GRAY', 'tprc',
                        'rand', 'baud', 'pwmf', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'bauds',
                        'delay', 'audio0', 'audio1', 'YELLOW', 'recmod', 'runmod', 'volume', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
        },
    },
    {
        'versions': [
            'tjc-0.58'
        ],
        'models': {
            0: {
                'numerated_system_variables': {
                    4: [
                        'dp', 'RED', 'thc', 'dim', 'wup', 'sya0', 'tch0', 'sys0', 'sya1', 'tch1', 'sys1', 'tch2',
                        'sys2', 'tch3', 'BLUE', 'GRAY', 'rand', 'baud', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims',
                        'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'YELLOW', 'recmod', 'runmod', 'sendxy', 'portbusy',
                    ],
                },
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'sendme', 'draw_h',
                        'printh', 'strlen', 'showqq', 'substr', 'prints', 'pa_txt', 'udelete', 'strsize', 'touch_j',
                        'randset', 'lcd_dev', 'lhmi_cle', 'whmi_cle', 'setbrush', 'ref_stop', 'com_stop', 'ref_star',
                        'com_star', 'doevents', 'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'fill', 'pa_q', 'picq', 'fstr', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init', 'rfpt', 'wfpt',
                        'rest', 'draw', 'covx',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            1: {
                'numerated_system_variables': {
                    4: [
                        'dp', 'RED', 'thc', 'dim', 'wup', 'sya0', 'rtc0', 'tch0', 'pio0', 'sys0', 'sya1', 'rtc1',
                        'tch1', 'pio1', 'sys1', 'rtc2', 'tch2', 'pio2', 'sys2', 'rtc3', 'tch3', 'pio3', 'rtc4', 'pwm4',
                        'pio4', 'rtc5', 'pwm5', 'pio5', 'rtc6', 'pwm6', 'pio6', 'pwm7', 'pio7', 'BLUE', 'GRAY', 'rand',
                        'baud', 'pwmf', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'YELLOW', 'recmod', 'runmod', 'sendxy', 'portbusy',
                    ],
                },
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'sendme', 'draw_h',
                        'printh', 'strlen', 'cfgpio', 'showqq', 'substr', 'prints', 'pa_txt', 'udelete', 'strsize',
                        'touch_j', 'randset', 'lcd_dev', 'lhmi_cle', 'whmi_cle', 'setbrush', 'ref_stop', 'com_stop',
                        'ref_star', 'com_star', 'doevents', 'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'fill', 'repo', 'wepo', 'pa_q', 'picq', 'fstr', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init',
                        'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            2: {
                'numerated_system_variables': {
                    4: [
                        'dp', 'eq0', 'eq1', 'eq2', 'eq3', 'eq4', 'eq5', 'eq6', 'eq7', 'eq8', 'eq9', 'RED', 'thc', 'aph',
                        'eqh', 'eql', 'dim', 'eqm', 'wup', 'sya0', 'tch0', 'sys0', 'sya1', 'tch1', 'sys1', 'tch2',
                        'sys2', 'tch3', 'BLUE', 'GRAY', 'tprc', 'rand', 'baud', 'thsp', 'ussp', 'thup', 'usup', 'addr',
                        'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'audio0', 'audio1', 'YELLOW', 'recmod', 'runmod', 'volume', 'sendxy',
                        'portbusy',
                    ],
                },
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'redir', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'rdfile',
                        'refile', 'twfile', 'sendme', 'draw_h', 'printh', 'strlen', 'cfgpio', 'showqq', 'deldir',
                        'newdir', 'substr', 'prints', 'pa_txt', 'delfile', 'newfile', 'udelete', 'strsize', 'touch_j',
                        'finddir', 'randset', 'lcd_dev', 'lhmi_cle', 'whmi_cle', 'findfile', 'setbrush', 'ref_stop',
                        'com_stop', 'ref_star', 'com_star', 'setlayer', 'doevents', 'timerset', 'getpassw', 'lcd_refx',
                        'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'move', 'fill', 'repo', 'wepo', 'pa_q', 'picq', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init',
                        'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx', 'play',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                }
            },
            3: {
                'numerated_system_variables': {
                    4: [
                        'dp', 'eq0', 'eq1', 'eq2', 'eq3', 'eq4', 'eq5', 'eq6', 'eq7', 'eq8', 'eq9', 'RED', 'thc', 'aph',
                        'eqh', 'eql', 'dim', 'eqm', 'wup', 'sya0', 'rtc0', 'tch0', 'pio0', 'sys0', 'sya1', 'rtc1',
                        'tch1', 'pio1', 'sys1', 'rtc2', 'tch2', 'pio2', 'sys2', 'rtc3', 'tch3', 'pio3', 'rtc4', 'pwm4',
                        'pio4', 'rtc5', 'pwm5', 'pio5', 'rtc6', 'pwm6', 'pio6', 'pwm7', 'pio7', 'BLUE', 'GRAY', 'tprc',
                        'rand', 'baud', 'pwmf', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'audio0', 'audio1', 'YELLOW', 'recmod', 'runmod', 'volume', 'sendxy',
                        'portbusy',
                    ],
                },
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'redir', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'rdfile',
                        'refile', 'twfile', 'sendme', 'draw_h', 'printh', 'strlen', 'cfgpio', 'showqq', 'deldir',
                        'newdir', 'substr', 'prints', 'pa_txt', 'delfile', 'newfile', 'udelete', 'strsize', 'touch_j',
                        'finddir', 'randset', 'lcd_dev', 'lhmi_cle', 'whmi_cle', 'findfile', 'setbrush', 'ref_stop',
                        'com_stop', 'ref_star', 'com_star', 'setlayer', 'doevents', 'timerset', 'getpassw', 'lcd_refx',
                        'setbaudz'
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'move', 'fill', 'repo', 'wepo', 'pa_q', 'picq', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init',
                        'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx', 'play'
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--'
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                }
            },
        },
    },
    {
        'versions': [
            'nxt-1.61.1', 'nxt-1.63.1', 'nxt-1.63.2', 'nxt-1.63.3', 'nxt-1.65.1', 'nxt-1.67.1', 'nxt-1.68.1',
        ],
        'models': {
            0: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'spstr', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'sendme',
                        'draw_h', 'printh', 'strlen', 'showqq', 'substr', 'prints', 'pa_txt', 'udelete', 'strsize',
                        'crcputh', 'touch_j', 'crcputs', 'randset', 'crcrest', 'crcputu', 'lcd_dev', 'lhmi_cle',
                        'whmi_cle', 'setbrush', 'ref_stop', 'com_stop', 'ref_star', 'com_star', 'doevents', 'timerset',
                        'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'fill', 'pa_q', 'picq', 'fstr', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init', 'rfpt', 'wfpt',
                        'rest', 'draw', 'covx',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'RED', 'thc', 'dim', 'wup', 'sya0', 'tch0', 'sya1', 'tch1', 'tch2', 'tch3', 'BLUE',
                        'GRAY', 'rand', 'baud', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'YELLOW', 'recmod', 'runmod', 'crcval', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            100: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'spstr', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'sendme',
                        'draw_h', 'printh', 'strlen', 'showqq', 'substr', 'prints', 'pa_txt', 'udelete', 'strsize',
                        'crcputh', 'touch_j', 'crcputs', 'randset', 'crcrest', 'crcputu', 'lcd_dev', 'lhmi_cle',
                        'whmi_cle', 'setbrush', 'ref_stop', 'com_stop', 'ref_star', 'com_star', 'piccolor', 'doevents',
                        'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'fill', 'repo', 'wepo', 'pa_q', 'picq', 'fstr', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init',
                        'rfpt', 'wfpt', 'rest', 'getv', 'draw', 'covx',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'RED', 'thc', 'dim', 'wup', 'sya0', 'tch0', 'sya1', 'tch1', 'tch2', 'tch3', 'BLUE',
                        'GRAY', 'rand', 'baud', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'YELLOW', 'recmod', 'runmod', 'crcval', 'sendxy', 'lowpower', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            1: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'spstr', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'sendme',
                        'draw_h', 'printh', 'strlen', 'cfgpio', 'showqq', 'substr', 'prints', 'pa_txt', 'udelete',
                        'strsize', 'crcputh', 'touch_j', 'crcputs', 'randset', 'crcrest', 'crcputu', 'lcd_dev',
                        'lhmi_cle', 'whmi_cle', 'setbrush', 'ref_stop', 'com_stop', 'ref_star', 'com_star', 'doevents',
                        'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'fill', 'repo', 'wepo', 'pa_q', 'picq', 'fstr', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init',
                        'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'RED', 'thc', 'dim', 'wup', 'sya0', 'rtc0', 'tch0', 'pio0', 'sya1', 'rtc1', 'tch1',
                        'pio1', 'rtc2', 'tch2', 'pio2', 'rtc3', 'tch3', 'pio3', 'rtc4', 'pwm4', 'pio4', 'rtc5', 'pwm5',
                        'pio5', 'rtc6', 'pwm6', 'pio6', 'pwm7', 'pio7', 'BLUE', 'GRAY', 'rand', 'baud', 'pwmf', 'thsp',
                        'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'YELLOW', 'recmod', 'runmod', 'crcval', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            2: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'redir', 'spstr', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode',
                        'rdfile', 'refile', 'twfile', 'sendme', 'draw_h', 'printh', 'strlen', 'cfgpio', 'showqq',
                        'deldir', 'newdir', 'substr', 'prints', 'pa_txt', 'delfile', 'newfile', 'udelete', 'strsize',
                        'crcputh', 'touch_j', 'finddir', 'crcputs', 'randset', 'cfguart', 'crcrest', 'crcputu',
                        'lcd_dev', 'lhmi_cle', 'whmi_cle', 'findfile', 'setbrush', 'ref_stop', 'com_stop', 'ref_star',
                        'com_star', 'setlayer', 'doevents', 'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'move', 'fill', 'xnum', 'repo', 'wepo', 'pa_q', 'picq', 'nstr', 'xstr', 'zstr', 'cirs', 'cuts',
                        'addt', 'init', 'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx', 'play',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'eq0', 'eq1', 'eq2', 'eq3', 'eq4', 'eq5', 'eq6', 'eq7', 'eq8', 'eq9', 'RED', 'thc', 'aph',
                        'eqh', 'eql', 'dim', 'eqm', 'wup', 'sya0', 'tch0', 'pio0', 'sya1', 'tch1', 'pio1', 'tch2',
                        'pio2', 'tch3', 'pio3', 'pwm4', 'pio4', 'pwm5', 'pio5', 'pwm6', 'pio6', 'pwm7', 'pio7', 'BLUE',
                        'GRAY', 'tprc', 'rand', 'baud', 'pwmf', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu',
                        'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'audio0', 'audio1', 'YELLOW', 'recmod', 'runmod', 'scache', 'volume',
                        'crcval', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            3: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'redir', 'spstr', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode',
                        'rdfile', 'refile', 'twfile', 'sendme', 'draw_h', 'printh', 'strlen', 'cfgpio', 'showqq',
                        'deldir', 'newdir', 'substr', 'prints', 'pa_txt', 'delfile', 'newfile', 'udelete', 'strsize',
                        'crcputh', 'touch_j', 'finddir', 'crcputs', 'randset', 'cfguart', 'crcrest', 'crcputu',
                        'lcd_dev', 'lhmi_cle', 'whmi_cle', 'findfile', 'setbrush', 'ref_stop', 'com_stop', 'ref_star',
                        'com_star', 'setlayer', 'doevents', 'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'move', 'fill', 'xnum', 'repo', 'wepo', 'pa_q', 'picq', 'nstr', 'xstr', 'zstr', 'cirs', 'cuts',
                        'addt', 'init', 'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx', 'play',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'eq0', 'eq1', 'eq2', 'eq3', 'eq4', 'eq5', 'eq6', 'eq7', 'eq8', 'eq9', 'RED', 'thc', 'aph',
                        'eqh', 'eql', 'dim', 'eqm', 'wup', 'sya0', 'rtc0', 'tch0', 'pio0', 'sya1', 'rtc1', 'tch1',
                        'pio1', 'rtc2', 'tch2', 'pio2', 'rtc3', 'tch3', 'pio3', 'rtc4', 'pwm4', 'pio4', 'rtc5', 'pwm5',
                        'pio5', 'rtc6', 'pwm6', 'pio6', 'pwm7', 'pio7', 'BLUE', 'GRAY', 'tprc', 'rand', 'baud', 'pwmf',
                        'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'audio0', 'audio1', 'YELLOW', 'recmod', 'runmod', 'scache', 'volume',
                        'crcval', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
        },
    },
    {
        'versions': [
            'tjc-1.65.5', 'tjc-1.66.1',
        ],
        'models': {
            0: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'spstr', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'sendme',
                        'draw_h', 'printh', 'strlen', 'showqq', 'substr', 'prints', 'pa_txt', 'udelete', 'strsize',
                        'crcputh', 'touch_j', 'crcputs', 'randset', 'crcrest', 'crcputu', 'lcd_dev', 'lhmi_cle',
                        'whmi_cle', 'setbrush', 'ref_stop', 'com_stop', 'ref_star', 'com_star', 'doevents', 'timerset',
                        'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'fill', 'pa_q', 'picq', 'fstr', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init', 'rfpt', 'wfpt',
                        'rest', 'draw', 'covx',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'RED', 'thc', 'dim', 'wup', 'sya0', 'tch0', 'sya1', 'tch1', 'tch2', 'tch3', 'BLUE',
                        'GRAY', 'rand', 'baud', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'YELLOW', 'recmod', 'runmod', 'crcval', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            100: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'spstr', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'sendme',
                        'draw_h', 'printh', 'strlen', 'showqq', 'substr', 'prints', 'pa_txt', 'udelete', 'strsize',
                        'crcputh', 'touch_j', 'crcputs', 'randset', 'crcrest', 'crcputu', 'lcd_dev', 'lhmi_cle',
                        'whmi_cle', 'setbrush', 'ref_stop', 'com_stop', 'ref_star', 'com_star', 'piccolor', 'doevents',
                        'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'fill', 'repo', 'wepo', 'pa_q', 'picq', 'fstr', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init',
                        'rfpt', 'wfpt', 'rest', 'getv', 'draw', 'covx',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'RED', 'thc', 'dim', 'wup', 'sya0', 'tch0', 'sya1', 'tch1', 'tch2', 'tch3', 'BLUE',
                        'GRAY', 'rand', 'baud', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'YELLOW', 'recmod', 'runmod', 'crcval', 'sendxy', 'lowpower', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            1: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'spstr', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode', 'sendme',
                        'draw_h', 'printh', 'strlen', 'cfgpio', 'showqq', 'substr', 'prints', 'pa_txt', 'udelete',
                        'strsize', 'crcputh', 'touch_j', 'crcputs', 'randset', 'crcrest', 'crcputu', 'lcd_dev',
                        'lhmi_cle', 'whmi_cle', 'setbrush', 'ref_stop', 'com_stop', 'ref_star', 'com_star', 'doevents',
                        'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'fill', 'repo', 'wepo', 'pa_q', 'picq', 'fstr', 'nstr', 'xstr', 'zstr', 'cirs', 'addt', 'init',
                        'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'RED', 'thc', 'dim', 'wup', 'sya0', 'rtc0', 'tch0', 'pio0', 'sya1', 'rtc1', 'tch1',
                        'pio1', 'rtc2', 'tch2', 'pio2', 'rtc3', 'tch3', 'pio3', 'rtc4', 'pwm4', 'pio4', 'rtc5', 'pwm5',
                        'pio5', 'rtc6', 'pwm6', 'pio6', 'pwm7', 'pio7', 'BLUE', 'GRAY', 'rand', 'baud', 'pwmf', 'thsp',
                        'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'YELLOW', 'recmod', 'runmod', 'crcval', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            2: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'redir', 'spstr', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode',
                        'rdfile', 'refile', 'twfile', 'sendme', 'draw_h', 'printh', 'strlen', 'cfgpio', 'showqq',
                        'deldir', 'newdir', 'substr', 'prints', 'pa_txt', 'delfile', 'newfile', 'udelete', 'strsize',
                        'crcputh', 'touch_j', 'finddir', 'crcputs', 'randset', 'cfguart', 'crcrest', 'crcputu',
                        'lcd_dev', 'lhmi_cle', 'whmi_cle', 'findfile', 'setbrush', 'ref_stop', 'com_stop', 'ref_star',
                        'com_star', 'setlayer', 'doevents', 'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'move', 'fill', 'xnum', 'repo', 'wepo', 'pa_q', 'picq', 'nstr', 'xstr', 'zstr', 'cirs', 'cuts',
                        'addt', 'init', 'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx', 'play',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'eq0', 'eq1', 'eq2', 'eq3', 'eq4', 'eq5', 'eq6', 'eq7', 'eq8', 'eq9', 'RED', 'thc', 'aph',
                        'eqh', 'eql', 'dim', 'eqm', 'wup', 'sya0', 'tch0', 'pio0', 'sya1', 'tch1', 'pio1', 'tch2',
                        'pio2', 'tch3', 'pio3', 'pwm4', 'pio4', 'pwm5', 'pio5', 'pwm6', 'pio6', 'pwm7', 'pio7', 'BLUE',
                        'GRAY', 'tprc', 'rand', 'baud', 'pwmf', 'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu',
                        'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'audio0', 'audio1', 'YELLOW', 'recmod', 'runmod', 'scache', 'volume',
                        'crcval', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
            3: {
                'numerated_operators': {
                    8: [
                        'click', 'comok', 'btlen', 'redir', 'spstr', 'print', 'ucopy', 'code_c', 'draw3d', 'qrcode',
                        'rdfile', 'refile', 'twfile', 'sendme', 'draw_h', 'printh', 'strlen', 'cfgpio', 'showqq',
                        'deldir', 'newdir', 'substr', 'prints', 'pa_txt', 'delfile', 'newfile', 'udelete', 'strsize',
                        'crcputh', 'touch_j', 'finddir', 'crcputs', 'randset', 'cfguart', 'crcrest', 'crcputu',
                        'lcd_dev', 'lhmi_cle', 'whmi_cle', 'findfile', 'setbrush', 'ref_stop', 'com_stop', 'ref_star',
                        'com_star', 'setlayer', 'doevents', 'timerset', 'getpassw', 'lcd_refx', 'setbaudz',
                    ],
                    4: [
                        'i', 'pic', 'cle', 'ref', 'cir', 'vis', 'cls', 'get', 'cov', 'tsw', 'xpic', 'page', 'line',
                        'move', 'fill', 'xnum', 'repo', 'wepo', 'pa_q', 'picq', 'nstr', 'xstr', 'zstr', 'cirs', 'cuts',
                        'addt', 'init', 'rept', 'wept', 'rfpt', 'wfpt', 'rest', 'draw', 'covx', 'play',
                    ],
                },
                'numerated_system_variables': {
                    4: [
                        'dp', 'eq0', 'eq1', 'eq2', 'eq3', 'eq4', 'eq5', 'eq6', 'eq7', 'eq8', 'eq9', 'RED', 'thc', 'aph',
                        'eqh', 'eql', 'dim', 'eqm', 'wup', 'sya0', 'rtc0', 'tch0', 'pio0', 'sya1', 'rtc1', 'tch1',
                        'pio1', 'rtc2', 'tch2', 'pio2', 'rtc3', 'tch3', 'pio3', 'rtc4', 'pwm4', 'pio4', 'rtc5', 'pwm5',
                        'pio5', 'rtc6', 'pwm6', 'pio6', 'pwm7', 'pio7', 'BLUE', 'GRAY', 'tprc', 'rand', 'baud', 'pwmf',
                        'thsp', 'ussp', 'thup', 'usup', 'addr', 'dims', 'bcpu', 'spax', 'spay',
                    ],
                    8: [
                        'WHITE', 'BLACK', 'GREEN', 'BROWN', 'thdra', 'appid', 'bkcmd', 'usize', 'sleep', 'tpdir',
                        'bauds', 'delay', 'audio0', 'audio1', 'YELLOW', 'recmod', 'runmod', 'scache', 'volume',
                        'crcval', 'sendxy', 'portbusy',
                    ],
                },
                'other_operators': {
                    'unary': [
                        '++', '--',
                    ],
                    'binary': [
                        '+', '-', '*', '/', '<<', '>>', '&', '|', '^', '=', '+=', '-=', '*=', '/=', '<<=', '>>=', '&=',
                        '|=', '^=',
                    ],
                    'jmp': 0x2054,
                },
            },
        },
    },
]


def _derive_nxt_1_68_2():
    """Operator tables of nxt-1.68.2 (F series), found by aligning the compiled events of the nspanel-lovelace-ui
    project with the nextion2text output of its source (about 17000 command lines).
    Verified: the size-8 list is the older one with one entry inserted at index 13 (name unknown); in the size-4 list
    xstr is at 22, draw at 34 and covx at 35. Entries that could not be verified are None (shown as op:<size>:<number>)."""
    import copy
    base = next(e for e in all_instruction_sets if "nxt-1.68.1" in e["versions"])
    model = copy.deepcopy(base["models"][100])
    ops = model["numerated_operators"]
    ops[8].insert(13, None)
    verified4 = {0: "i", 1: "pic", 3: "ref", 5: "vis", 9: "tsw", 10: "xpic", 11: "page", 12: "line", 13: "fill",
                 22: "xstr", 34: "draw", 35: "covx"}
    ops[4] = [verified4.get(i) for i in range(max(verified4) + 1)]
    return {"versions": ["nxt-1.68.2"], "models": {100: model}, "priority": 10}


all_instruction_sets.append(_derive_nxt_1_68_2())


def _derive_nxt_1_65_1_series100():
    """Same method as above for the nxt-1.65.1 F series file (nspanel_US_L-I.tft). The size-8 list of the generic
    1.6x set is correct for it; in the size-4 list xstr is at 21 and covx at 34."""
    import copy
    base = next(e for e in all_instruction_sets if "nxt-1.68.1" in e["versions"])
    model = copy.deepcopy(base["models"][100])
    ops = model["numerated_operators"]
    verified4 = {i: ops[4][i] for i in range(14)}
    verified4.update({21: "xstr", 34: "covx"})
    ops[4] = [verified4.get(i) for i in range(35)]
    return {"versions": ["nxt-1.65.1"], "models": {100: model}, "priority": 10}


all_instruction_sets.append(_derive_nxt_1_65_1_series100())


# Operator numbers of the "X" series (3 = Intelligent/P, 4 = TJC) of editors 1.65.x. They differ from the older series 3 table
# in the size-4 list, only the entries below are verified (by comparing the event code of Gaggiuino_35's NX4827P043 .tft files
# with their .HMI source, the QIDI 800_480_PLUS .tft with its .HMI source, and from the context in the Sovol file); everything
# else of the size-4 list decodes as op:4:<number>.
#   size 4:  0 i (conditional), 2 cle, 5 vis, 12 page, 15 fill, 17 repo / 18 wepo (same operands `global:0x14,100`: 17
#            reads the saved language at start-up and is followed by a range check, 18 follows the assignment of a new
#            language), 31 ref (operands are component ids), 39 covx, 9 tsw (QIDI Plus4 and Q1 sources)
#   size 8:  the list of series 3 with 48 = doevents (it was getpassw there); click 0, btlen 2, printh 15, strlen 16, substr 21
#            and prints 22 were confirmed.
_XSERIES_SIZE4 = {0: "i", 2: "cle", 5: "vis", 9: "tsw", 12: "page", 15: "fill", 17: "repo", 18: "wepo", 31: "ref", 39: "covx"}


def _derive_xseries(versions, series, base_version="tjc-1.65.5", base_series=3):
    import copy
    base = next(e for e in all_instruction_sets if base_version in e["versions"])
    model = copy.deepcopy(base["models"][base_series])
    ops = model["numerated_operators"]
    ops[4] = [_XSERIES_SIZE4.get(i) for i in range(40)]
    ops[8][48] = "doevents"
    return {"versions": list(versions), "models": {series: model}, "priority": 10}


# series 4 numbering was seen in tjc-1.65.5 (Sovol), 1.66.1 (OpenQ1 Q1_UI.tft) and 1.67.1 (QIDI, OpenQ1 Q1_UI_mod.tft)
all_instruction_sets.append(_derive_xseries(["tjc-1.65.5", "tjc-1.66.1", "tjc-1.67.1"], 4))
all_instruction_sets.append(_derive_xseries(["nxt-1.65.1"], 3, "nxt-1.65.1", 3))


# TJC editor 1.67.4, checked with powadcr's TJC4832T035 / K035 / T135 .tft files and their .HMI source. Only the operators that
# were seen in the source are named; the rest of the size-4 list and the shifted part of the size-8 list of series 100 is not known.
#   series 0 / 1: the tables of 1.65.5 stay valid; size 4: 28 covx; size 8: print 4, substr 14, prints 15
#   series 100:   size 4: page 11, covx 35; size 8: print 4, substr 15, prints 16 (one operator more before them than in 1.65.5)
def _derive_tjc_1_67_4():
    import copy
    base = next(e for e in all_instruction_sets if "tjc-1.65.5" in e["versions"] and 0 in e["models"])
    models = {}
    for series in (0, 1):
        m = copy.deepcopy(base["models"][series])
        size4 = list(m["numerated_operators"][4]) + [None] * 29
        size4[28] = "covx"
        m["numerated_operators"][4] = size4[:max(29, len(m["numerated_operators"][4]))]
        models[series] = m
    m = copy.deepcopy(base["models"][100])
    ops8 = list(m["numerated_operators"][8])
    m["numerated_operators"][8] = ops8[:14] + [None] + ops8[14:]
    m["numerated_operators"][4] = [{0: "i", 11: "page", 35: "covx"}.get(i) for i in range(36)]
    models[100] = m
    return {"versions": ["tjc-1.67.4"], "models": models, "priority": 10}


all_instruction_sets.append(_derive_tjc_1_67_4())
