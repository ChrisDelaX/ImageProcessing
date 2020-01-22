(set! resolution 8)
(set! force-complex-fields? true)
(set! pml-layers (list
   (make pml (thickness 1))
))
(set! sources (list
   (make source (src (make continuous-src (frequency 0.26316)))(component Ex)(center 0 0 4.3)(size 10 5 0))
   (make source (src (make continuous-src (frequency 0.26316)))(component Ey)(center 0 0 5.25)(size 10 5 0))
))
(set! geometry-lattice (make lattice (size 10 5 12.5)))
(set! geometry (list
   (make block (material (make dielectric (index 2.3812)))(center -4 -1.8 1.675)(size 2 0.83 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center -4 -0.4 1.675)(size 2 0.83 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center -4 1 1.675)(size 2 0.83 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center -4 2.4 1.675)(size 2 0.83 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center -2 -1.8 1.675)(size 2 0.85 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center -2 -0.4 1.675)(size 2 0.85 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center -2 1 1.675)(size 2 0.85 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center -2 2.4 1.675)(size 2 0.85 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 0 -1.8 1.675)(size 2 0.87 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 0 -0.4 1.675)(size 2 0.87 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 0 1 1.675)(size 2 0.87 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 0 2.4 1.675)(size 2 0.87 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 2 -1.8 1.675)(size 2 0.89 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 2 -0.4 1.675)(size 2 0.89 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 2 1 1.675)(size 2 0.89 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 2 2.4 1.675)(size 2 0.89 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 4 -1.8 1.675)(size 2 0.91 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 4 -0.4 1.675)(size 2 0.91 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 4 1 1.675)(size 2 0.91 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 4 2.4 1.675)(size 2 0.91 5.15)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
   (make block (material (make dielectric (index 2.3812)))(center 1.675 0 -13.575)(size 20 10 25.35)(e1 1 0 0)(e2 0 1 0)(e3 0 0 1))
))

(run-until 200
   (at-beginning
      output-epsilon
   )
   (at-end
      (in-volume 
         (volume (center 0 0 -0.9) (size 10 5 0))
         (to-appended "Ex_z=0" output-efield-x)
         (to-appended "Ey_z=0" output-efield-y)
      )
   )
   (at-end
      (in-volume 
         (volume (center 0 0 -6.25) (size 10 5 0))
         (to-appended "Ex_z=5.35" output-efield-x)
         (to-appended "Ey_z=5.35" output-efield-y)
      )
   )
)
