.class public final synthetic Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatDialog;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;->f$0:Landroidx/appcompat/app/AppCompatDialog;

    iput-object p2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;->f$0:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/tools/myui/ctadialog/PermissionUtils;->getPermissionTitle(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    iget-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const v3, 0x7f0d00cd

    invoke-virtual {p0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0a034e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a034b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;->f$0:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/tools/myui/ctadialog/PermissionUtils;->getPermissionTitle(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    iget-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const v3, 0x7f0d00cd

    invoke-virtual {p0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0a034e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a034b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
