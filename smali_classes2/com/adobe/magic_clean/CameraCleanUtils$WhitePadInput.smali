.class public Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhitePadInput"
.end annotation


# instance fields
.field public mEnableBetaFeatures:Z

.field public mInputBmp:Landroid/graphics/Bitmap;

.field public mOriginalCornersInfo:[Landroid/graphics/PointF;

.field public mWhitePadSize:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadInput;->mInputBmp:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadInput;->mWhitePadSize:I

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$WhitePadInput;->mEnableBetaFeatures:Z

    return-void
.end method
