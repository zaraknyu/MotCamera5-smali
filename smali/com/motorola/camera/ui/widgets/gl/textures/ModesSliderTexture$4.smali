.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;
.super Landroidx/collection/internal/Lock;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

.field public final synthetic val$begin:F

.field public final synthetic val$end:F

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;ZFF)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->val$show:Z

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->val$begin:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->val$end:F

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->val$end:F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->val$show:Z

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->val$show:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;->val$begin:F

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void
.end method
