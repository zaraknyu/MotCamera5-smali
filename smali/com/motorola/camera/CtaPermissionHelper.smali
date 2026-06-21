.class public abstract Lcom/motorola/camera/CtaPermissionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getCtaAdvanceDialog(Landroid/content/Context;Lcom/motorola/camera/CtaPermissionHelper$Listener;)Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;
    .locals 4

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x3e9

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1200fa

    const/16 v3, 0x3ea

    .line 25
    invoke-static {v2, v0, v1, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1200f8

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p0, v0, p1}, Lcom/motorola/camera/CtaPermissionHelper;->getCtaAdvanceDialog(Landroid/content/Context;Ljava/util/HashMap;Lcom/motorola/camera/CtaPermissionHelper$Listener;)Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    move-result-object p0

    return-object p0
.end method

.method public static getCtaAdvanceDialog(Landroid/content/Context;Ljava/util/HashMap;Lcom/motorola/camera/CtaPermissionHelper$Listener;)Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 6
    new-instance v3, Lcom/motorola/camera/CtaPermissionHelper$1;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p2}, Lcom/motorola/camera/CtaPermissionHelper$1;-><init>(ILjava/lang/Object;)V

    add-int/lit8 v4, v0, -0x1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x12

    .line 8
    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 9
    :cond_0
    new-instance v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f13016f

    invoke-direct {v1, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;-><init>(Landroid/view/ContextThemeWrapper;)V

    const p0, 0x7f120069

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const/4 p0, 0x0

    .line 11
    iput-boolean p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isOnlyPermission:Z

    .line 12
    iput-object v2, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->privacyContent:Landroid/text/SpannableString;

    const p0, 0x7f1200ff

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionHeaderDesc:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;-><init>(I)V

    .line 16
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;I)V

    .line 17
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    new-instance p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 20
    new-instance p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static getCtaInitialDialog(Lcom/motorola/camera/Camera;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/motorola/camera/Camera;)Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/motorola/camera/CtaPermissionHelper$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p3}, Lcom/motorola/camera/CtaPermissionHelper$1;-><init>(ILjava/lang/Object;)V

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x12

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    new-instance v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f13016f

    invoke-direct {v1, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;-><init>(Landroid/view/ContextThemeWrapper;)V

    const p0, 0x7f120069

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appName:Ljava/lang/String;

    const/high16 p0, 0x7f0f0000

    iput p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appIcon:I

    iput-object v2, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->privacyContent:Landroid/text/SpannableString;

    const p0, 0x7f1200ff

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const p0, 0x7f120100

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionSupplementDesc:Ljava/lang/String;

    const p0, 0x7f1200fc

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    new-instance p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3, v0}, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->positiveButtonClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;

    new-instance p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->negativeButtonClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static getStartTrailCtaAdvanceDialog(Landroid/content/Context;Lcom/motorola/camera/CtaPermissionHelper$Listener;)Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1200fa

    const/16 v3, 0x3ea

    invoke-static {v2, v0, v1, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1200f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lcom/motorola/camera/CtaPermissionHelper;->getCtaAdvanceDialog(Landroid/content/Context;Ljava/util/HashMap;Lcom/motorola/camera/CtaPermissionHelper$Listener;)Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    move-result-object p0

    return-object p0
.end method
