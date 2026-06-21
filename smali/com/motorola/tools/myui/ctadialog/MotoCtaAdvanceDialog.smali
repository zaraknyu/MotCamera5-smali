.class public final Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"


# instance fields
.field public buttonMessage:Ljava/lang/String;

.field public isCtaBasicDialog:Z

.field public isOnlyPermission:Z

.field public mContentView:Landroid/widget/LinearLayout;

.field public final mDialogBackgroundColor:I

.field public mPrimaryColor:I

.field public negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public final permissionDescMap:Ljava/util/LinkedHashMap;

.field public permissionHeaderDesc:Ljava/lang/String;

.field public permissionSupplementDesc:Ljava/lang/String;

.field public positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public privacyContent:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;)V
    .locals 5

    const v0, 0x7f1301c1

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isCtaBasicDialog:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->privacyContent:Landroid/text/SpannableString;

    iput-boolean v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isOnlyPermission:Z

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionHeaderDesc:Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionDescMap:Ljava/util/LinkedHashMap;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionSupplementDesc:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->buttonMessage:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mDialogBackgroundColor:I

    iput v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mPrimaryColor:I

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f040405

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mDialogBackgroundColor:I

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0403ff

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The theme id must be Theme.MyUI.DayNight.Dialog.Alert(or descendant)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/tools/myui/ctadialog/CommonUtils;->isEnableEdgeToEdge(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;-><init>(I)V

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0403ff

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mPrimaryColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0d0044

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mDialogBackgroundColor:I

    invoke-virtual {p1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroidx/collection/internal/Lock;

    invoke-direct {v4, v3}, Landroidx/collection/internal/Lock;-><init>(Landroid/view/View;)V

    new-instance v3, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;-><init>(Landroid/view/WindowInsetsController;Landroidx/collection/internal/Lock;)V

    iput-object p1, v3, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;->mWindow:Landroid/view/Window;

    iget-object p1, v3, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;->mWindow:Landroid/view/Window;

    iget-object v3, v3, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;->mInsetsController:Landroid/view/WindowInsetsController;

    const/16 v4, 0x10

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    invoke-interface {v3, v4, v4}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    invoke-interface {v3, v1, v4}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionDescMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    const v2, 0x7f0a005e

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0104

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    const v3, 0x7f0a00af

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x1020019

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x102001a

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v2, :cond_7

    iget-boolean v7, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isCtaBasicDialog:Z

    if-eqz v7, :cond_6

    const v7, 0x7f12064b

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_6
    const v7, 0x7f12064a

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    :goto_2
    const/4 v2, 0x0

    if-eqz v4, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const v7, 0x7f120050

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v7, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    if-eqz v5, :cond_c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isCtaBasicDialog:Z

    if-eqz v4, :cond_a

    const v4, 0x7f1201a1

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_a
    const v4, 0x7f120181

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    new-instance v4, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    if-eqz v3, :cond_f

    iget-object v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->buttonMessage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isOnlyPermission:Z

    if-eqz v4, :cond_d

    const v4, 0x7f1200bd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_d
    const v4, 0x7f1200be

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_e
    iget-object v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->buttonMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_5
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-boolean v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isOnlyPermission:Z

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    if-nez v3, :cond_10

    goto/16 :goto_7

    :cond_10
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d00e3

    iget-object v5, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->privacyContent:Landroid/text/SpannableString;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_13

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const v2, 0x7f1203c4

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1203c3

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_11

    new-instance v8, Lcom/motorola/camera/CtaPermissionHelper$1;

    invoke-direct {v8, v5, p0}, Lcom/motorola/camera/CtaPermissionHelper$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v5, 0x11

    invoke-virtual {v7, v8, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_6

    :cond_12
    throw v2

    :cond_13
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->privacyContent:Landroid/text/SpannableString;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const-class v7, Landroid/text/style/ClickableSpan;

    invoke-virtual {v2, v1, v4, v7}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    if-eqz v4, :cond_14

    array-length v7, v4

    if-lez v7, :cond_14

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v7, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;

    invoke-direct {v7, v5, p0, v2}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_14
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->privacyContent:Landroid/text/SpannableString;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_15
    :goto_7
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_16

    goto :goto_9

    :cond_16
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_9

    :cond_17
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00ce

    iget-object v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionHeaderDesc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionHeaderDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_18
    const v3, 0x7f12038f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_8
    iget-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v6, v0}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;-><init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_9
    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionSupplementDesc:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_a

    :cond_19
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00cf

    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionSupplementDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1a
    :goto_a
    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set advance permission description map"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
