<?php 
class ControllerModuleBossSearch extends Controller { 	
	public function index() { 
    	$this->language->load('module/boss_search');
		
		$this->load->model('catalog/category');
        
        if (isset($this->request->get['filter_name'])) {
			$filter_name = $this->request->get['filter_name'];
		} else {
			$filter_name = '';
		} 
        
        if (isset($this->request->get['filter_category_id'])) {
			$filter_category_id = $this->request->get['filter_category_id'];
		} else {
			$filter_category_id = 0;
		} 
        
        $this->data['text_category'] = $this->language->get('text_category');
        
        $this->data['entry_search'] = $this->language->get('entry_search');
		  
    	$this->data['button_search'] = $this->language->get('button_search');
		
		$this->load->model('catalog/category');
		
		// 3 Level Category Search
		$this->data['categories'] = array();
					
		$categories_1 = $this->model_catalog_category->getCategories(0);
		
		foreach ($categories_1 as $category_1) {
			$level_2_data = array();
			
			$categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);
			
			foreach ($categories_2 as $category_2) {
				$level_3_data = array();
				
				$categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);
				
				foreach ($categories_3 as $category_3) {
					$level_3_data[] = array(
						'category_id' => $category_3['category_id'],
						'name'        => $category_3['name'],
					);
				}
				
				$level_2_data[] = array(
					'category_id' => $category_2['category_id'],	
					'name'        => $category_2['name'],
					'children'    => $level_3_data
				);					
			}
			
			$this->data['categories'][] = array(
				'category_id' => $category_1['category_id'],
				'name'        => $category_1['name'],
				'children'    => $level_2_data
			);
		}
		
		$this->data['filter_name'] = $filter_name;
		$this->data['filter_category_id'] = $filter_category_id;
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/boss_search.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/boss_search.tpl';
		} else {
			$this->template = 'default/template/module/boss_search.tpl';
		}
				
		$this->response->setOutput($this->render());
  	}
}
?>