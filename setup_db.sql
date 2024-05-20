CREATE TABLE componentes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo TEXT NOT NULL,
    marca TEXT NOT NULL,
    modelo TEXT NOT NULL,
    especificaciones TEXT NOT NULL,
    precio REAL NOT NULL,
    socket TEXT
);

INSERT INTO componentes (tipo, marca, modelo, especificaciones, precio, socket) VALUES 
    ('CPU', 'Intel', 'i3-7100', '{"nucleos": 2, "frecuencia": 3.9, "tdp": 51}', 100, 'LGA1200'),
    ('CPU', 'Intel', 'i5-8400', '{"nucleos": 6, "frecuencia": 2.8, "tdp": 65}', 200, 'LGA1200'),
    ('CPU', 'Intel', 'i7-9700K', '{"nucleos": 8, "frecuencia": 3.6, "tdp": 95}', 350, 'LGA1200'),
    ('CPU', 'AMD', 'Ryzen 5 3600', '{"nucleos": 6, "frecuencia": 3.6, "tdp": 65}', 200, 'AMD4'),
    ('CPU', 'AMD', 'Ryzen 7 3700X', '{"nucleos": 8, "frecuencia": 3.6, "tdp": 65}', 300, 'AMD4'),
    ('CPU', 'Intel', 'i9-12900K', '{"nucleos": 8, "frecuencia": 3.6, "tdp": 95}', 500, 'LGA1700'),
    ('CPU', 'AMD', 'Ryzen 9 5900X', '{"nucleos": 12, "frecuencia": 3.8, "tdp": 105}', 400, 'AMD5');

INSERT INTO componentes (tipo, marca, modelo, especificaciones, precio) VALUES 
    ('GPU', 'NVIDIA', 'GTX 1660', '{"tfLOPS": 5, "vram": 6}', 250),
    ('GPU', 'NVIDIA', 'RTX 2070', '{"tfLOPS": 7.5, "vram": 8}', 500),
    ('GPU', 'NVIDIA', 'RTX 3080', '{"tfLOPS": 29.7, "vram": 10}', 700),
    ('GPU', 'AMD', 'RX 5700 XT', '{"tfLOPS": 9.75, "vram": 8}', 400),
    ('GPU', 'AMD', 'RX 6800', '{"tfLOPS": 16.17, "vram": 16}', 580),
    ('GPU', 'AMD', 'RX 6900 XT', '{"tfLOPS": 23.04, "vram": 16}', 900),
    ('GPU', 'NVIDIA', 'GTX 1050', '{"tfLOPS": 1.862, "vram": 2}', 150),
    ('GPU', 'NVIDIA', 'RTX 3060', '{"tfLOPS": 13.181, "vram": 12}', 400),
    ('GPU', 'AMD', 'RX 6600 XT', '{"tfLOPS": 10.61, "vram": 8}', 380),
    ('GPU', 'AMD', 'RX 6900 XT', '{"tfLOPS": 23.04, "vram": 16}', 900);

INSERT INTO componentes (tipo, marca, modelo, especificaciones, precio, socket) VALUES 
    ('MB', 'ASUS', 'ROG Strix B450-F', '{"formato": "ATX"}', 120, 'AMD4'),
    ('MB', 'MSI', 'B450 TOMAHAWK MAX', '{"formato": "ATX"}', 100, 'AMD4'),
    ('MB', 'Gigabyte', 'X570 AORUS Elite', '{"formato": "ATX"}', 200, 'AMD4'),
    ('MB', 'ASUS', 'ROG Strix Z490-E', '{"formato": "ATX"}', 300, 'LGA1200'),
    ('MB', 'MSI', 'Z490-A PRO', '{"formato": "ATX"}', 150, 'LGA1200'),
    ('MB', 'Gigabyte', 'Z490 AORUS Master', '{"formato": "ATX"}', 350, 'LGA1200'),
    ('MB', 'ASUS', 'ROG Strix Z690-E', '{"formato": "ATX"}', 400, 'LGA1700'),
    ('MB', 'MSI', 'Z690-A PRO', '{"formato": "ATX"}', 250, 'LGA1700'),
    ('MB', 'Gigabyte', 'Z690 AORUS Master', '{"formato": "ATX"}', 450, 'LGA1700'),
    ('MB', 'ASUS', 'ROG Strix X570-E', '{"formato": "ATX"}', 300, 'AMD5'),
    ('MB', 'MSI', 'X570-A PRO', '{"formato": "ATX"}', 200, 'AMD5');

INSERT INTO componentes (tipo, marca, modelo, especificaciones, precio) VALUES 
    ('RAM', 'Corsair', 'Vengeance LPX 16GB DDR4 3200MHz', '{"frecuencia": 3200, "capacidad": 16}', 80),
    ('RAM', 'G.Skill', 'Ripjaws V Series 32GB DDR4 3600MHz', '{"frecuencia": 3600, "capacidad": 32}', 150),
    ('RAM', 'Kingston', 'HyperX Fury 8GB DDR4 2666MHz', '{"frecuencia": 2666, "capacidad": 8}', 40),
    ('RAM', 'Crucial', 'Ballistix 64GB DDR4 3200MHz', '{"frecuencia": 3200, "capacidad": 64}', 300);

SELECT * FROM componentes WHERE tipo = 'CPU' AND socket = 'AMD4';
SELECT * FROM componentes WHERE tipo = 'MB' AND socket = 'AMD4';
SELECT * FROM componentes WHERE tipo = 'MB' AND socket = 'AMD4';
