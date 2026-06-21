.class public final Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public display:Z

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public messageText:Ljava/lang/String;

.field public negativeButtonText:Ljava/lang/String;

.field public negativeCallback:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

.field public positiveButtonText:Ljava/lang/String;

.field public positiveCallback:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

.field public titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveButtonText:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeButtonText:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->display:Z

    return-void
.end method
