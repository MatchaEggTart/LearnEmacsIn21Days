(defun sum(n)
  (let ((s 0))
    (dotimes (i n s)
      (incf s i))))

(defun addn (n)
  #'(lambda (x)
      (+ x n)))

(+ 2 3)

(+ 2 3 4 5)

(/ (- 7 1) (- 4 2))

2 (+ 2 3) (+ 2 3 4) (/ (- 7 1) (- 4 2))

(/ 1 0)

;; quote
(quote (+ 3 5))

'(+ 3 5)

;; list
(list '(+ 2 1) (+ 2 1))

;; Symbol
'Artichoke

'(my 3 "Sons")

'(the list (a b c) has 3 elements)

(list 'my (+ 2 1) "Sons")

()

nil

;; cons
(cons 'a '(b c d))

(cons 'a (cons 'b nil))

(list 'a 'b)

(cons 'a 'b)

;; car
(car '(a b c))

;; cdr
(cdr '(a b c))

(car (cdr(cdr '(a b c))))

(third '(a b c))

;; listp
(listp '(a b c))

(listp 'a)

(listp 27)

;; True False
(null nil)

(not nil)

(if (listp '(a b c))
    (+ 1 2)
    (+ 5 6))

(if (listp 27)
    (+ 1 2)
    (+ 5 6))

(if (listp 27)
    (+ 1 2))

(if 27 1 2)

(and t (+ 1 2))

;; function
(defun our-third(x)
  (car (cdr (cdr x))))

(our-third '(a b c d))

(> (+ 1 4) 3)
(> 3 (+ 1 4))

(defun sum-greater (x y z)
  (> (+ x y) z))

(sum-greater 1 4 3)

;; Recursion
(defun our-member (obj lst)
  (if (null lst)
      nil
      (if (eql obj (car lst))
	  lst
	  (our-member obj (cdr lst)))))

(our-member 'b '(a b c d e))

;; format
(format t "~A plus ~A equals ~A. ~%" 2 3 (+ 2 3))

;; read
(defun askme(string)
  (format t "~A~%" string)
  (read))

;; let
(let ((x 1) (y 2))
  (+ x y))

;; numberp
(defun ask-number()
  (format t "Please enter a number.~%")
  (let ((val (read)))
    (if (numberp val)
	val
	(ask-number))))

;; let 最后一个参数是个表达式
;; 表达式的值作为 let 的 返回值
(defun try-let-format()
  (format t "Please enter a~%")
  (let ((val (read))) (+ val 3)))

(try-let-format())

(ask-number)

;; 全局变量
(defparameter *glob* 99)

;; 常量
(defconstant limit (+ *glob* 1))

;; 查看常量名是否已经使用
(boundp '*glob*)

;; 赋值
(setf *glob* 98)
(let ((n 10)) (setf n 2) n)

;; x 将成为 全局变量，完成赋值
(setf x (list 'a 'b 'c))

