int maxSearch(const int* v)   
{
	/**
	 * This is a text that takes
	 * two lines
	 */	
	int currentMax = 0;
	for(int i = 0; i < MAX_NUMBER; i++)
	{
		currentMax = max(v[i], currentMax); // here we are using std::max
	}
	
	return currentMax;
}


/**
 * HelloWorldApp class prints
 * "Hello World!" to standard output
 */
public class HelloWorldApp{
  	public static void main(String argv[])
  	{
  		// Display string
  		System.out.println("Hello World!");	
  	}
}

<?php
	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;
		$criteria->compare('idtarea',$this->idtarea);
		$criteria->compare('nombre',$this->nombre,true);
		$criteria->compare('descripcion',$this->descripcion,true);
		$criteria->compare('fecha',$this->fecha,true);
		$criteria->compare('idinstructora',$this->idinstructora);

        //$user=Yii::app()->user->name;
        $rol=Usser::model()->getRolThisUser($user);
        $rol=Usser::model()->getNameRol($rol);
        if('Instructora'==$rol)
        {
            $criteria->join="JOIN instructora ON(t.idinstructora=instructora.idinstructora ) ";
            $criteria->condition="instructora.idusuario='".$user."'";
        }

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination'=>array('pageSize'=>5)
		));
	}
?>

class TelgramRequestHandler(object):
    def handle(self):
        addr = self.client_address[0]         # Client IP-adress
        telgram = self.request.recv(1024)     # Recieve telgram
        print "From: %s, Received: %s" % (addr, telgram)
        return
        
@media only screen and (min-width: 768px) and (max-width: 991px) {
	
	#main {
		width: 712px;
		padding: 100px 28px 120px;
	}
	
	/* .mono {
		font-size: 90%;
	} */
	
	.cssbtn a {
		margin-top: 10px;
		margin-bottom: 10px;
		width: 60px;  
		height: 60px;   
		font-size: 28px;
		line-height: 62px;
	}
	
<!DOCTYPE html>
<html>
  <head>
    <title>Listings Style Test</title>
    <meta charset="UTF-8">
    <style>
      /* CSS Test */
      * {
        padding: 0;
        border: 0;
        margin: 0;
      }
    </style>
    <link rel="stylesheet" href="css/style.css" />
  </head>
  <header> hey </header>
  <article> this is a article </article>
  <body>
    <!-- Paragraphs are fine -->
    <div id="box">			
			<p>
			  Hello World
			</p>
      <p>Hello World</p>
      <p id="test">Hello World</p>
			<p></p>
    </div>
    <div>Test</div>
    <!-- HTML script is not consistent -->
    <script src="js/benchmark.js"></script>
    <script>
      function createSquare(x, y) {
        // This is a comment.
        var square = document.createElement('div');
        square.style.width = square.style.height = '50px';
        square.style.backgroundColor = 'blue';
        
        /*
         * This is another comment.
         */
        square.style.position = 'absolute';
        square.style.left = x + 'px'; 
        square.style.top = y + 'px';
        
        var body = document.getElementsByTagName('body')[0];
        body.appendChild(square);
      };
      
      // Please take a look at +=
      window.addEventListener('mousedown', function(event) {
        // German umlaut test: Berührungspunkt ermitteln
        var x = event.touches[0].pageX;
        var y = event.touches[0].pageY;
        var lookAtThis += 1;
      });
    </script>
  </body>
</html>
public function evidenciaXUsuarioAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        
        $usuario = $em->getRepository('GIVIPBundle:Usuario')->find($id);
        if(!$usuario){
            $this->get('session')->getFlashBag()->add('error', 'El usuario seleccionado no existe en el sistema.');
            
            return $this->redirect($this->generateUrl('evidencia'));
        }
        $nombre = $usuario->getNombre() ." ". $usuario->getApellidos();
        if($this->get('security.context')->isGranted('ROLE_VIP1')){
        $consulta = $em->createQuery("select e, i, u from GIVIPBundle:Evidencia e
                                      JOIN e.indicador i JOIN e.usuario u WHERE e.usuario=:id");
        }
        else
        {
        $consulta = $em->createQuery("select e, i, u from GIVIPBundle:Evidencia e JOIN e.indicador i JOIN e.usuario u WHERE e.usuario=:id and e.estado=true");
        }
        
        $consulta->setParameter('id', $id);
        
        $res = $consulta->getResult();
        $paginator = $this->get('ideup.simple_paginator');
        $paginator->setItemsPerPage(10, 'resultado');
        $entities = $paginator->paginate($res, 'resultado')->getResult();
        
        $deleteForm = $this->createDeleteForm(0);
        $buscarForm = $this->createSearchForm();
        
        return $this->render('GIVIPBundle:Evidencia:evidenciausuario.html.twig', array(
            'entities' => $entities, 'delete_form' => $deleteForm->createView(),
            'buscar_form' => $buscarForm->createView(), 'usuario'=>$nombre
        ));
    }
