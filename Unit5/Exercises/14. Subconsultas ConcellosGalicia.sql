use concellosGalicia_debilidadxexistencia;
show tables;

#---------------------------------------------------------------------------------------------------------------
# NOMBRE DE LAS COMARCAS CUYOS CONCELLOS TIENEN UNA SUPERFICIE INFERIOR A LA MEDIA
#---------------------------------------------------------------------------------------------------------------
select sum(superficie)/count(*) from ConcellosGalicia;
select * from ComarcasGalicia;
SELECT * FROM ConcellosGalicia;

SELECT distinct ComarcasGalicia.nombre from ComarcasGalicia INNER JOIN ConcellosGalicia 
					ON ComarcasGalicia.Comarca = ConcellosGalicia.Comarca AND
						superficie < 94.49 ;

# PERTENENCIA A UN CONJUNTO
    select nombre from ComarcasGalicia where Comarca IN
		(select comarca from ConcellosGalicia where superficie < 
			(select avg(superficie) from ConcellosGalicia ))
        order by 1;
# COMPARACIÓN    
        Select distinct ComarcasGalicia.nombre, superficie from ComarcasGalicia INNER JOIN ConcellosGalicia
			ON ComarcasGalicia.Comarca = ConcellosGalicia.Comarca AND superficie < 
				(select avg(superficie) from ConcellosGalicia )
                order by superficie ASC;
        
        Select distinct ComarcasGalicia.nombre, superficie from ComarcasGalicia, ConcellosGalicia
			WHERE ComarcasGalicia.Comarca = ConcellosGalicia.Comarca AND superficie < 
				(select avg(superficie) from ConcellosGalicia )
                order by superficie ASC;
                
# CUANTIFICADA (ANY, ALL)
	select distinct ComarcasGalicia.nombre from ComarcasGalicia, concellosGalicia
		where ComarcasGalicia.Comarca = ConcellosGalicia.Comarca AND superficie = ANY 
			(select superficie from ConcellosGalicia where superficie < (select avg(superficie) from ConcellosGalicia))
	order by 1;
    
	select distinct ComarcasGalicia.nombre from ComarcasGalicia, concellosGalicia
		where ComarcasGalicia.Comarca = ConcellosGalicia.Comarca AND superficie < ALL 
			#(select avg(superficie) from ConcellosGalicia)
			(select superficie from ConcellosGalicia where superficie > (select avg(superficie) from ConcellosGalicia))
    order by 1;

# EXISTENCIA
	select nombre from ComarcasGalicia AS C1
		where EXISTS (select * from ComarcasGalicia AS C2 where C1.Comarca = C2.Comarca AND C2.Comarca IN (select distinct Comarca from ConcellosGalicia
						where superficie < (select avg(superficie) from ConcellosGalicia)))
	order by 1;

#---------------------------------------------------------------------------------------------------------------
# MUESTRA LOS CONCELLOS DE GALICIA CON MENOR DATO DE POBLACIÓN
#---------------------------------------------------------------------------------------------------------------
select Nombre, mujeres+hombres from PoblacionGalicia INNER JOIN ConcellosGalicia
	ON ConcellosGalicia.Concello = PoblacionGalicia.Concello
    order by 2 ASC
    limit 5;
Select Nombre, mujeres+hombres from PoblacionGalicia LEFT OUTER JOIN ConcellosGalicia
	ON ConcellosGalicia.Concello = PoblacionGalicia.Concello
    order by 2 ASC
    limit 5;


# PERTENENCIA A UN CONJUNTO
	Select * from ConcellosGalicia where Concello IN
		(Select Concello from PoblacionGalicia where mujeres+hombres =  (Select min(mujeres+hombres) from PoblacionGalicia));
	
    
# COMPARACIÓN    
	Select * from ConcellosGalicia 
		#where Concello = (Select Concello from PoblacionGalicia where mujeres+hombres <= ALL(Select mujeres+hombres from PoblacionGalicia));
		#where Concello = (Select Concello from PoblacionGalicia where mujeres+hombres <=  (Select min(mujeres+hombres) from PoblacionGalicia));
		where Concello = (Select Concello from PoblacionGalicia where mujeres+hombres =  (Select min(mujeres+hombres) from PoblacionGalicia));

# CUANTIFICADA

#---------------------------------------------------------------------------------------------------------------
# MUESTRA LOS CONCELLOS DE GALICIA CON MAYOR DATO DE POBLACIÓN QUE EL CONCELLO DE VIGO
#---------------------------------------------------------------------------------------------------------------
# PERTENENCIA A UN CONJUNTO



# COMPARACIÓN    
	select distinct Nombre AS 'Concello' from ConcellosGalicia INNER JOIN PoblacionGalicia
		ON ConcellosGalicia.Concello = PoblacionGalicia.Concello AND
		   (mujeres + hombres) >      (select max(mujeres + hombres) from PoblacionGalicia where Concello = (select Concello from ConcellosGalicia where nombre = 'A Guarda' ) );

    
# CUANTIFICADA

#---------------------------------------------------------------------------------------------------------------
# MUESTRA LAS COOMARCAS DE GALICIA CON MAYOR DATO DE POBLACIÓN QUE LA DE VIGO
#---------------------------------------------------------------------------------------------------------------
# PERTENENCIA A UN CONJUNTO


# COMPARACIÓN    


# CUANTIFICADA



# MUESTRA LOS NOMBRES DE LOS CONCELLOS CUYA POBLACIÓN FEMENINA SEA MAYOR, IGUAL O MENOR A LA MASCULINA
