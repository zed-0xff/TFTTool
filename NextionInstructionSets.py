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


def _derive_tjc_1_65_5_series4():
    """Series 4 (TJC4827T043, Sovol SV08 Max) of tjc-1.65.5. The operator numbers differ from series 3, so only entries
    that were verified from the context in the Sovol file are named, the rest decode as op:<size>:<number>:
      size 4:  0 i (conditional), 12 page (`page dp`, `page 0` after the 0x65 touch frame), 17 repo / 18 wepo (the same
               operands `global:0x14,100`: 17 reads the saved language at start-up and is followed by a range check, 18
               follows the assignment of a new language), 31 ref (operands are component ids 2, 3, 4, 5, 11, 14),
               39 covx (`covx <src>,<dst>,0,0` after a number is built)
      size 8:  unchanged from series 3: click 0, btlen 2, printh 15, prints 22 and getpassw 48 all have the argument counts
               of nxt-doc's "Full Instruction Set" (getpassw: hidden, no arguments, 67 uses without operands here)
    """
    import copy
    base = next(e for e in all_instruction_sets if "tjc-1.65.5" in e["versions"])
    model = copy.deepcopy(base["models"][3])
    ops = model["numerated_operators"]
    ops[4] = [{0: "i", 12: "page", 17: "repo", 18: "wepo", 31: "ref", 39: "covx"}.get(i) for i in range(40)]
    return {"versions": ["tjc-1.65.5"], "models": {4: model}, "priority": 10}


all_instruction_sets.append(_derive_tjc_1_65_5_series4())
