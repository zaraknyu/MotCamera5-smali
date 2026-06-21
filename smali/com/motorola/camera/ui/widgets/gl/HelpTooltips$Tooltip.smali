.class public abstract Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mArrowDirection:I

.field public final mCanRotate:Z

.field public mDismissed:Z

.field public final mHasGradient:Z

.field public mRadius:Ljava/lang/Float;

.field public final mShowCloseIcon:Z

.field public mTextPaddingX:Ljava/lang/Float;

.field public mTextPaddingY:Ljava/lang/Float;

.field public final mTextResource:I

.field public final mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mTextureSize:Lcom/motorola/camera/PreviewSize;

.field public final mUseDynamicViewSize:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mRadius:Ljava/lang/Float;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingY:Ljava/lang/Float;

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextResource:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mHasGradient:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mCanRotate:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mShowCloseIcon:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mUseDynamicViewSize:Z

    return-void
.end method


# virtual methods
.method public abstract initialize()V
.end method

.method public abstract markDismissed()V
.end method

.method public abstract shouldDismiss(Lcom/google/zxing/Result;)Z
.end method

.method public abstract shouldShow()Z
.end method

.method public abstract updateDisplay(ILcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
.end method
