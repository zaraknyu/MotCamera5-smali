.class public Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EraserInput"
.end annotation


# instance fields
.field public mCleaningLevel:I

.field public mEnableBetaFeatures:Z

.field public mInputBmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;->mInputBmp:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;->mCleaningLevel:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$EraserInput;->mEnableBetaFeatures:Z

    return-void
.end method
