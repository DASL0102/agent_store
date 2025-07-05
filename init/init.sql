CREATE TABLE journals (
    id SERIAL PRIMARY KEY,
    journable_type VARCHAR(50),
    journable_id INTEGER,
    user_id INTEGER,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    version INTEGER,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_type VARCHAR(50)
);

-- Insertar datos ficticios
-- Actividades típicas en una empresa de software
-- Actividades extendidas en una empresa de software
INSERT INTO journals (journable_type, journable_id, user_id, notes, version, data_type)
VALUES 
-- Usuario 1: DevOps
('Deployment', 1, 1, 'Despliegue de hotfix v2.3.5 en producción', 5, 'text'),
('Monitoring', 88, 1, 'Configuración de alertas de Prometheus para el nuevo servicio', 1, 'markdown'),

-- Usuario 2: Backend Developer
('BugReport', 403, 2, 'Fix al manejo de errores en endpoints /login y /register', 2, 'markdown'),
('CodeReview', 17, 2, 'Revisión del PR #17 con sugerencias de refactor', 1, 'text'),

-- Usuario 3: Frontend Developer
('Meeting', 13, 3, 'Daily con equipo de UX/UI', 1, 'text'),
('Task', 302, 3, 'Integración del componente FileUploader con validaciones', 2, 'markdown'),
('Task', 303, 3, 'Ajustes de estilos para vista mobile', 1, 'text'),

-- Usuario 4: QA
('TestPlan', 55, 4, 'Creación de plan de pruebas para el módulo de autenticación', 1, 'markdown'),
('BugReport', 404, 4, 'Reporte de bug en validación de campos en formulario de contacto', 1, 'text'),

-- Usuario 5: Líder Técnico
('Meeting', 14, 5, 'Reunión con cliente para demo del sprint', 1, 'text'),
('Documentation', 77, 5, 'Actualización del README con nuevas instrucciones de deploy', 2, 'markdown'),
('Task', 304, 5, 'Revisión del sistema de logging con rotación de archivos', 1, 'text'),

-- Usuario 2 nuevamente el mismo día
('Task', 305, 2, 'Implementación de lógica para generar PDFs desde reports', 1, 'text'),
('Task', 306, 2, 'Refactor del módulo de carga de archivos', 2, 'markdown');
