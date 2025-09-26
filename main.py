import cv2
import pytesseract

def main():
    img_cv = cv2.imread('test_image/images.png')
    img_rgb = cv2.cvtColor(img_cv, cv2.COLOR_BGR2RGB)
    print(pytesseract.image_to_string(img_rgb))
    print("Hello, World!")


if __name__ == '__main__':
    main()