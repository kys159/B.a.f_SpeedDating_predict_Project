## :two_hearts: Speed Dating Predict using Machine-Learning with R :two_hearts: <br>
###### 비어플 홈페이지 주소 : https://www.dgubaf.com/

<br>

### 2019.02 비어플 프로젝트
&nbsp;&nbsp; 비어플 세션을 통해 배운내용들을 바탕으로 실제 데이터를 분석해보는 프로젝트입니다. 본 데이터는 Kaggle에서 제공된 데이터이며 5분 동안 잠깐 만나는 Speed Dating 후 각 남녀에게 설문조사를 한 결과를 토대로 추후 에프터를 할 의향이 있는지를 예측하는것이 목표입니다. <br>

<br>

## :bulb: 전체적인 분석목표
 - **Logistic Regression**
   + 타겟 변수가 애프터 성공 여부(이진형 변수)이므로 Logistic Regression(**해석가능한모형**)을 활용하여 소개팅 성공여부 예측에서 더 나아가 어떤 요인이 소개팅 성공 여부에 영향을 미치는지 파악하고자 합니다. <br>
 - 프로젝트 당시 2학년 2학기를 마친 상태로 아직 로지스틱회귀분석에 대해 배우지 않은 상태였으며 비어플 세션에서 배운 로지스틱회귀분석 내용을 바탕으로 실제 데이터에 적용시켜보고 모형의 해석까지 나아가는것이 목표입니다.<br>
 - 또한, **Random Forest**, **Support Vector Machine** 등 다양한 머신러닝 기법을 적용시켜보는 것이 목표입니다.
 - 소개팅 준비를 할 때 어떠한 점들을 준비해야될지 알아보는 재밌는 분석이 될 수 있을것으로 예상됩니다.
 
 <br>
 
## :file_folder: 파일 구조
```
├── SpeedDating_predict_Project/
   ├── Preprocessing.R
   ├── Modeling_man.R
   └── Modeling_woman.R
```
 - `Preprocessing.R` 데이터를 불러오기, 파생변수 생성, 이상치 처리, 결측치 대체, 오버샘플링등의 전처리 내용이 담겨있는 파일입니다.
 - `Modeling_man.R` 전처리를 한 최종 데이터에서 남자, 여자로 데이터를 분할하여 모델링하며 남자 데이터를 활용한 모델링 파일입니다.
 - `Modeling_woman.R` 위와 같으며, 여자 데이터를 활용한 모델링 파일입니다.
 
 <br>
 
 <img src="https://user-images.githubusercontent.com/61648914/90143986-379dd400-ddb9-11ea-9a1a-feaba9f91968.png" width="50%" height="30%" title="px(픽셀) 크기 설정"><img src="https://user-images.githubusercontent.com/61648914/90144053-4ab0a400-ddb9-11ea-9367-16998aca612f.png" width="50%" height="30%" title="px(픽셀) 크기 설정">
 
 <br>
 
  ## :disappointed: 아쉬운점
  - 두 번째 프로젝트였으나 여전히 데이터분할이나 모델링 과정에서 부족한 부분이 많았습니다. <br>
  - overfitting이 된 것을 확인하였으나 어떠한 이유에서인지 확인할 수 없었습니다.  <br>
  - 처음 공부한 여러 머신러닝 기법을 한 번에 적용시키려고 하니 모델링에 너무 많은 시간이 소요돼 데이터 전처리나 EDA과정이 미흡했습니다. <br>
 
 
 
 
 
