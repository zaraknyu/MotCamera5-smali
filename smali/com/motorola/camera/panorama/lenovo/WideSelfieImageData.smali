.class public final Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ImageData:[B

.field public final mFaceRects:[Landroid/graphics/Rect;

.field public final mImageId:I

.field public final mOrientation:I

.field public final mRotationX:F

.field public final mRotationY:F


# direct methods
.method public constructor <init>([BFFII[Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    iput p2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationX:F

    iput p3, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationY:F

    iput p4, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    iput p5, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    iput-object p6, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mFaceRects:[Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mRotationX. = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRotationY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mImageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ImageData ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
