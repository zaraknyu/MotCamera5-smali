.class public final synthetic Lcom/google/mlkit/common/internal/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;
.implements Landroidx/preference/Preference$SummaryProvider;
.implements Landroidx/work/multiprocess/RemoteDispatcher;
.implements Lcom/google/android/datatransport/runtime/time/Clock;
.implements Lcom/google/firebase/components/ComponentFactory;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static sSimpleSummaryProvider:Lcom/google/mlkit/common/internal/zzc;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/mlkit/common/internal/zzc;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p0, v0, :cond_0

    .line 5
    new-instance p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/mlkit/common/internal/zzc;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    const/16 p1, 0xf

    iput p1, p0, Lcom/google/mlkit/common/internal/zzc;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureCaptureStreamNative$default(JLandroid/graphics/Point;ILandroid/view/Surface;IZ)Landroid/view/Surface;
    .locals 10

    sget-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->configureCaptureStreamNative(JLandroid/graphics/Point;ILandroid/view/Surface;IZIZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;I)Lcom/google/mlkit/common/internal/zzc;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem:[I

    .line 4
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x2

    .line 6
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    const/4 v4, 0x3

    .line 8
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 9
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x4

    .line 10
    invoke-static {p0, p1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/16 v0, 0x9

    .line 11
    invoke-static {p0, p1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v0, 0x7

    .line 12
    invoke-static {p0, p1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/16 v0, 0x8

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    const/4 v0, 0x5

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x6

    .line 15
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 16
    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    int-to-float v1, v1

    invoke-direct {v3, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p0, v0, v2, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/AbsoluteCornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    new-instance p0, Lcom/google/mlkit/common/internal/zzc;

    const/16 p1, 0xd

    .line 20
    invoke-direct {p0, p1}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    .line 21
    iget p1, v5, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    .line 22
    iget p1, v5, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    .line 23
    iget p1, v5, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    .line 24
    iget p1, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    return-object p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setBasePreferenceStyle(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07052e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07050e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    const v3, 0x7f06043a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-static {v3, v4, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070516

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    :cond_1
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const v0, 0x7f060439

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p0, 0x14

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-class p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    invoke-virtual {p1, p0}, Lcom/google/firebase/components/RestrictedComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/tasks/zza;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/tasks/zza;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;
    .locals 0

    new-instance p0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    return-object p0
.end method

.method public execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;)V
    .locals 0

    check-cast p1, Landroidx/work/multiprocess/IWorkManagerImpl;

    const-string p0, "JobMgrKeepAliveJob"

    invoke-interface {p1, p0, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method

.method public getTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "OptionalModuleUtils"

    const-string v0, "Failed to check feature availability"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 2

    check-cast p1, Landroidx/preference/ListPreference;

    iget-object p0, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    iget-object v1, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    aget-object p0, v1, p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const p1, 0x7f120335

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_2

    iget-object p1, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    aget-object p0, p1, p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/mlkit/common/internal/zzc;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "RectangleShape"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
