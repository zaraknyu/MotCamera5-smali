.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    const-string/jumbo v2, "radius"

    const-string v3, "animation"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->showRadius:Landroid/animation/PropertyValuesHolder;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->strokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->showRadius:Landroid/animation/PropertyValuesHolder;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->strokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
