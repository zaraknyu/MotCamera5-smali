.class public final Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "SourceFile"


# instance fields
.field public final background:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final backgroundInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f04036c

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzbf;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget v3, v3, Landroid/util/TypedValue;->data:I

    :goto_0
    const/4 v5, 0x0

    const v6, 0x7f040030

    const v7, 0x7f1301b2

    invoke-static {v1, v5, v6, v7}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v8

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v9, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v9, v8, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v8, v9

    :goto_1
    if-nez p2, :cond_3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzbf;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    iget v1, v1, Landroid/util/TypedValue;->data:I

    goto :goto_2

    :cond_3
    move/from16 v1, p2

    :goto_2
    invoke-direct {v0, v8, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v14, v4, [I

    const/4 v10, 0x0

    const v12, 0x7f040030

    const v13, 0x7f1301b2

    invoke-static {v9, v10, v12, v13}, Lcom/google/android/material/internal/ViewUtils;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v11, Lcom/google/android/material/R$styleable;->MaterialAlertDialog:[I

    invoke-static/range {v9 .. v14}, Lcom/google/android/material/internal/ViewUtils;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f07039e

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v8, 0x2

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f07039f

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v10, 0x3

    invoke-virtual {v2, v10, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f07039d

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/4 v12, 0x1

    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07039c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v2, v4, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v12, :cond_4

    move v15, v10

    move v10, v3

    move v3, v15

    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v8, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    const-class v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04013c

    invoke-static {v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzbf;->resolveTypedValueOrThrow(Landroid/content/Context;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v2

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_5

    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_3

    :cond_5
    iget v2, v2, Landroid/util/TypedValue;->data:I

    :goto_3
    invoke-virtual {v9, v5, v11, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v3, v9, v5, v6, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {v3, v9}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v4, 0x1010571

    invoke-virtual {v1, v4, v2, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_6

    iget-object v2, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    new-instance v4, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v4, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v4, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v4, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v4, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v4, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v4, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v4, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v4, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v4, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v4, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v4, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_6
    iput-object v3, v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/appcompat/app/AlertDialog;
    .locals 9

    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v4, :cond_0

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    iget-object p0, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p0
.end method

.method public final setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public final setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p0
.end method

.method public final setNegativeButton(Ljava/lang/String;Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p0
.end method

.method public final setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object p0
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p0
.end method

.method public final setPositiveButton(Ljava/lang/String;Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p0
.end method

.method public final setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p0
.end method
