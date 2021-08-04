function d = shodapuc(t,con)
switch t
    case 20
        switch con
            case 10
               d = [1:50 52:62 63 65:67 69 70 72:75 77:85 87:89 91:100]; 
            case 20
                d = [1:27 29:63 65:100];
            case 30
                d = [1:21 23:34 36:100];
            case 40
                d = [1:48 50:53 55:88 90:95 97:100];
            case 50
                d = [1:53 55:63 65:67 69:74 76:90 92:95 97:100];
            case 60
                d = [1:40 42:75 77:97 99 100];
            case 70
                d = [1:66 68:100];
            case 80
                d = [1:17 19 20 22:45 47:57 59:68 70:93 95:100];
            case 90
                d = [1:36 38 39 41:63 65:100];
            case 100
                d = [1:57 59:62 64 66:85 88:100];
            case 110
                d = [1:28 30:36 38:60 63:66 68:96 98:100];
            case 120
                d = [1:11 13:50 52:76 78:86 89:100];
            case 130
                d = [1:29 31:65 67:100];
            case 140
                d = [1:77 79 80 82:100];
            case 150
                d = [1:31 33:58 60:67 69:87 89:100];
            case 160
                d = [1:100];
            case 170
                d = [1:65 67:85 87:100];
            case 180 
                d = [1:91 93:100];
            case 190
                d = [1:12 14:31 33:47 49:100];
            case 200
                d = [1:57 59:92 94:100];
        end
    case 37
        switch con
            case 10
                d = [1:15 17:35 37:48 50:64 66:83 85:100];
            case 20
                d = [1:23 25:70 72:80 82:95 97:100];
            case 30
                d = [1:16 18:73 75:94 96 97 100];
            case 40
                d = [1:39 41:43 45:52 54:100];
            case 50
                d = [1:51 53:56 58:77 79:99];
            case 60
                d = [1:59 61:67 69:92 94:100];
            case 70
                d = [1:60 62:78 80:100];
            case 80
                d = [1:54 56:61 63:65 67:76 78:84 86:100];
            case 90
                d = [1:55 57:73 75:100];
            case 100
                d = [1:13 15:55 57:64 66:100];
            case 110
                d = [1:20 22:42 44:62 64:83 85:98 100];
            case 120
                d = [1:55 57:100];
            case 130
                d = [1:23 25:74 76:80 82:95 97:100];
            case 140
                d = [1:45 47:86 88:100];
            case 150
                d = [1:17 19:43 45:47 49:52 54:70 72:100];
            case 160
                d = [1:44 46:100];
            case 170
                d = [1:45 47:62 64:71 73:94 96:100];
            case 180 
                d = [1:45 47:63 65 66 68:73 75:100];
            case 190
                d = [1:49 51:79 81:87 90:100];
            case 200
                d = [1:64 66:74 76:85 87:100];
        end
end