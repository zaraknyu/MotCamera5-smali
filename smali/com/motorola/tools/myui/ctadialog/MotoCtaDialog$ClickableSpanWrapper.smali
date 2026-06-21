.class public final Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mClickableSpan:Landroid/text/style/ClickableSpan;

.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/text/style/ClickableSpan;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;->this$0:Landroidx/appcompat/app/AppCompatDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;->mClickableSpan:Landroid/text/style/ClickableSpan;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;->mClickableSpan:Landroid/text/style/ClickableSpan;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;->mClickableSpan:Landroid/text/style/ClickableSpan;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;->this$0:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    iget p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mPrimaryColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$ClickableSpanWrapper;->this$0:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    iget p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mPrimaryColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
