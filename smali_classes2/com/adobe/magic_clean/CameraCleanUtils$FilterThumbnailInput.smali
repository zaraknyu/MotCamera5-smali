.class public Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterThumbnailInput"
.end annotation


# instance fields
.field public mAutoCleanImage:Landroid/graphics/Bitmap;

.field public mCleaningLevel:I

.field public mDocumentColorType:I

.field public mIsColorInfoAvailable:Z

.field public mIsTintRemoved:Z

.field public mOriginalImage:Landroid/graphics/Bitmap;

.field public mTintPixel:Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mIsTintRemoved:Z

    .line 3
    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mDocumentColorType:I

    .line 4
    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mIsColorInfoAvailable:Z

    .line 5
    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;

    invoke-direct {v0}, Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;-><init>()V

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mTintPixel:Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZIZLcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mOriginalImage:Landroid/graphics/Bitmap;

    .line 8
    iput-object p2, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mAutoCleanImage:Landroid/graphics/Bitmap;

    .line 9
    iput p3, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mCleaningLevel:I

    .line 10
    iput-boolean p4, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mIsTintRemoved:Z

    .line 11
    iput p5, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mDocumentColorType:I

    .line 12
    iput-boolean p6, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mIsColorInfoAvailable:Z

    .line 13
    iput-object p7, p0, Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailInput;->mTintPixel:Lcom/adobe/magic_clean/CameraCleanUtils$LABColorPixel;

    return-void
.end method
