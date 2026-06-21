.class public Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/DocDetectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraCleanDocDetectionInput"
.end annotation


# instance fields
.field public mInputBitmap:Landroid/graphics/Bitmap;

.field public mIsLiveCaptureCase:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;->mInputBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionInput;->mIsLiveCaptureCase:Z

    return-void
.end method
