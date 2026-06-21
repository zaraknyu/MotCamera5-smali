.class public final Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $it:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $rotation:F


# direct methods
.method public synthetic constructor <init>(FILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$r8$classId:I

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$it:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$rotation:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$it:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageButton;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$rotation:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$it:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$rotation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$it:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;->$rotation:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
