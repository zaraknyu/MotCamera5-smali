.class public final Lcom/motorola/camera/CtaPermissionHelper$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$listener:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->val$listener:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/LinkAnnotation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->val$listener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->val$listener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->val$listener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->val$listener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CtaPermissionHelper$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/CtaPermissionHelper$Listener;->onCtaDialogClick()V

    :cond_0
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->val$listener:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/LinkAnnotation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->val$listener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->onCtaDialogClick()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->val$listener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    iget p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mPrimaryColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$1;->val$listener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    iget p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mPrimaryColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
