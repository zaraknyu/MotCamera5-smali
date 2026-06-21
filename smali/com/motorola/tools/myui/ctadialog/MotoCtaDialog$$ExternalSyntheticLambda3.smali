.class public final synthetic Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->basicPermissionDescMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->advancePermissionDescMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mActivityContext:Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;-><init>(Landroid/view/ContextThemeWrapper;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isCtaBasicDialog:Z

    iput-boolean v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isOnlyPermission:Z

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionSupplementDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionSupplementDesc:Ljava/lang/String;

    new-instance v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V

    iput-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V

    iput-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda9;-><init>(Landroidx/appcompat/app/AppCompatDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1200bf

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->buttonMessage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->buttonMessage:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionHeaderDesc:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->negativeButtonClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;

    if-eqz p1, :cond_4

    const/16 v0, -0x64

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;->onClick(Landroid/content/DialogInterface;I)V

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :goto_2
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->positiveButtonClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;

    if-eqz p1, :cond_5

    const/16 v0, -0x66

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->onClick(Landroid/content/DialogInterface;I)V

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
