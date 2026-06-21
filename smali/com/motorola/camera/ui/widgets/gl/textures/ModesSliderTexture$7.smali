.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "SourceFile"


# instance fields
.field public dragDistance:F

.field public max:F

.field public move:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDragApplyValue(F)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v3, p1

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->dragDistance:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->dragDistance:F

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->move:Z

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v5, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->move:Z

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->move:Z

    if-eqz p0, :cond_1

    invoke-static {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$monSliderMoving(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;FLcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    :cond_1
    return-void
.end method

.method public final onDragEnd(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->move:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->dragDistance:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->max:F

    cmpl-float v0, v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-lez v0, :cond_1

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$manimateDrag(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;F)V

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$manimateDrag(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;F)V

    return-void
.end method

.method public final onDragStart()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->dragDistance:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->max:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;->move:Z

    return-void
.end method
