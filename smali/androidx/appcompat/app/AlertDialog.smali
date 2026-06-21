.class public final Landroidx/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final mAlert:Landroidx/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 1

    invoke-static {p1, p2}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;Landroid/view/Window;)V

    iput-object p1, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    return-void
.end method

.method public static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f040031

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget v1, v0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x7f0a033d

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a048d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0103

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a00ad

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a011d

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/4 v13, 0x0

    if-eqz v10, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v13

    :goto_1
    if-eqz v14, :cond_2

    invoke-static {v10}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v15

    if-nez v15, :cond_3

    :cond_2
    const/high16 v15, 0x20000

    invoke-virtual {v2, v15, v15}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    const/16 v15, 0x8

    const/4 v11, -0x1

    if-eqz v14, :cond_5

    const v14, 0x7f0a011b

    invoke-virtual {v2, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v10, v0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v10, :cond_4

    invoke-virtual {v14, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v10, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v12, 0x0

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v4, v5}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v6, v7}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v8, v9}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    const v7, 0x7f0a03d0

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    iput-object v7, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7, v13}, Landroid/view/View;->setFocusable(Z)V

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7, v13}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v7, 0x102000b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v8, :cond_8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v7, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v7, :cond_9

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const v7, 0x1020019

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroidx/preference/Preference$1;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v15}, Landroid/view/View;->setVisibility(I)V

    move v7, v13

    goto :goto_4

    :cond_a
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    const/4 v7, 0x1

    :goto_4
    const v9, 0x102001a

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v7, v7, 0x2

    :goto_5
    const v9, 0x102001b

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_c
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v7, v7, 0x4

    :goto_6
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v9, 0x7f04002f

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v8, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v8, Landroid/util/TypedValue;->data:I

    const/4 v8, 0x2

    if-eqz v1, :cond_f

    const/high16 v1, 0x3f000000    # 0.5f

    if-ne v7, v10, :cond_d

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v9, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_d
    if-ne v7, v8, :cond_e

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v9, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_e
    const/4 v9, 0x4

    if-ne v7, v9, :cond_f

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v9, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    :goto_7
    if-eqz v7, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const v7, 0x7f0a047d

    if-eqz v1, :cond_11

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v1, v11, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v4, v9, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_11
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-boolean v1, v0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    if-eqz v1, :cond_13

    const v1, 0x7f0a005e

    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_12
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    iget-object v12, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v1, v7, v9, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_13
    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v15, :cond_14

    const/4 v10, 0x1

    goto :goto_a

    :cond_14
    move v10, v13

    :goto_a
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v15, :cond_15

    const/4 v1, 0x1

    goto :goto_b

    :cond_15
    move v1, v13

    :goto_b
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v15, :cond_16

    const/4 v3, 0x1

    goto :goto_c

    :cond_16
    move v3, v13

    :goto_c
    if-nez v3, :cond_17

    const v6, 0x7f0a045b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    if-eqz v1, :cond_1b

    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v6, :cond_18

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_18
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v6, :cond_1a

    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v6, :cond_19

    goto :goto_d

    :cond_19
    const/4 v4, 0x0

    goto :goto_e

    :cond_1a
    :goto_d
    const v6, 0x7f0a047a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :goto_e
    if-eqz v4, :cond_1c

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_1b
    const v4, 0x7f0a045c

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    :goto_f
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v4, :cond_20

    if-eqz v3, :cond_1d

    if-nez v1, :cond_20

    :cond_1d
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    if-eqz v1, :cond_1e

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    goto :goto_10

    :cond_1e
    iget v7, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    :goto_10
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    if-eqz v3, :cond_1f

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    goto :goto_11

    :cond_1f
    iget v12, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    :goto_11
    invoke-virtual {v4, v6, v7, v9, v12}, Landroid/view/View;->setPadding(IIII)V

    :cond_20
    if-nez v10, :cond_24

    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v4, :cond_21

    goto :goto_12

    :cond_21
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    :goto_12
    if-eqz v4, :cond_24

    if-eqz v3, :cond_22

    move v13, v8

    :cond_22
    or-int/2addr v1, v13

    const v3, 0x7f0a03cf

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0a03ce

    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v6, 0x3

    invoke-static {v4, v1, v6}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;II)V

    if-eqz v3, :cond_23

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_23
    if-eqz v2, :cond_24

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_24
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_25

    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_25

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    if-le v0, v11, :cond_25

    const/4 v7, 0x1

    invoke-virtual {v1, v0, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_25
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
