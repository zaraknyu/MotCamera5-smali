.class public final Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"


# instance fields
.field public final advancePermissionDescMap:Ljava/util/LinkedHashMap;

.field public appIcon:I

.field public appName:Ljava/lang/String;

.field public final basicPermissionDescMap:Ljava/util/LinkedHashMap;

.field public buttonMessage:Ljava/lang/String;

.field public final mActivityContext:Landroid/view/ContextThemeWrapper;

.field public mButtonMessageView:Landroid/widget/TextView;

.field public mContentView:Landroid/widget/LinearLayout;

.field public mPrimaryColor:I

.field public negativeButtonClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;

.field public permissionHeaderDesc:Ljava/lang/String;

.field public permissionSupplementDesc:Ljava/lang/String;

.field public positiveButtonClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;

.field public privacyContent:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;)V
    .locals 3

    const v0, 0x7f1301c2

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appIcon:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appName:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->privacyContent:Landroid/text/SpannableString;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->basicPermissionDescMap:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->advancePermissionDescMap:Ljava/util/LinkedHashMap;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionSupplementDesc:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->positiveButtonClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->negativeButtonClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;

    iput v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mPrimaryColor:I

    iput-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mActivityContext:Landroid/view/ContextThemeWrapper;

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

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

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The alert dialog theme must be MotoCtaAppTheme.Dialog.Alert.DayNight (or descendant)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

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

    const/4 v1, 0x7

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

    iput v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mPrimaryColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DesktopMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    const v2, 0x7f0d0046

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v0, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-ne p1, v0, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_6

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    goto :goto_2

    :cond_6
    move p1, v1

    :goto_2
    if-eqz p1, :cond_7

    :goto_3
    const p1, 0x7f0d0047

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    :goto_4
    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->basicPermissionDescMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->advancePermissionDescMap:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set basic permission description map or advance permission description map"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    const v2, 0x7f0a0077

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x1020016

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x1020019

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x102001a

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f0a0104

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    const v7, 0x7f0a00af

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v2, :cond_a

    iget v8, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appIcon:I

    if-eqz v8, :cond_a

    invoke-static {v7, v8}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    const/4 v2, 0x0

    if-eqz v4, :cond_d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, ""

    goto :goto_6

    :cond_b
    iget-object v9, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appName:Ljava/lang/String;

    :goto_6
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const v10, 0x7f12064c

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_7
    if-eqz v5, :cond_f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v4, 0x7f120050

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    :cond_e
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    new-instance v4, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    if-eqz v6, :cond_12

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f1201a1

    goto :goto_9

    :cond_10
    const v4, 0x7f120181

    :goto_9
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    :cond_11
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    new-instance v4, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_13

    goto :goto_b

    :cond_13
    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_14
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    const v4, 0x7f1200be

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b

    :cond_15
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    const v4, 0x7f1200c0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b

    :cond_16
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    const v4, 0x7f1200c2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_17
    :goto_b
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_18

    goto/16 :goto_d

    :cond_18
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d00e3

    iget-object v5, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->privacyContent:Landroid/text/SpannableString;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const v2, 0x7f1203c4

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1203c3

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_19

    new-instance v8, Lcom/motorola/camera/CtaPermissionHelper$1;

    invoke-direct {v8, v5, p0}, Lcom/motorola/camera/CtaPermissionHelper$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v5, 0x11

    invoke-virtual {v6, v8, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_19
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_c

    :cond_1a
    throw v2

    :cond_1b
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->privacyContent:Landroid/text/SpannableString;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const-class v6, Landroid/text/style/ClickableSpan;

    invoke-virtual {v2, v1, v4, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    if-eqz v4, :cond_1c

    array-length v6, v4

    if-lez v6, :cond_1c

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;

    invoke-direct {v6, v5, p0, v2}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->privacyContent:Landroid/text/SpannableString;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_d
    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_f

    :cond_1e
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00ce

    iget-object v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_1f
    const v2, 0x7f12038f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_e
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v7, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;-><init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_20
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_21

    new-instance p1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v7, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda5;-><init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/content/Context;I)V

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_21
    :goto_f
    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionSupplementDesc:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_10

    :cond_22
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00cf

    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionSupplementDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_23
    :goto_10
    return-void
.end method
