# spring 

## 이미지 빌드하고 실행하기
```bash
docker build -t {tag_name:version} .
docker run -v $PWD/example:/elice_project -it -p 8080:8080 {tag_name:version}
```

## 실행된 컨테이너에서 example 실행해보기
```
cd elice_project/example

# run 
gradle bootRun

# test
gradle test
```

## 제작 실습 관련
제작하시는 실습의 경우 아래와 같은 형태로 구조를 작성해주시면 됩니다.
```
├── lecture-1
│   ├── exercise-1
│   ├── exercise-2
│   └── exercise-3
├── lecture-2
│   ├── exercise-1
│   ├── exercise-2
│   ├── exercise-3
│   └── exercise-4
└── Dockerfile
```