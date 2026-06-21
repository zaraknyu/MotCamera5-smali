.class public final Lcom/motorola/camera/AppFeatures;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;
.implements Landroidx/media3/extractor/text/Subtitle;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/motorola/camera/device/callables/CloseSessionListener;
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;


# instance fields
.field public final synthetic $r8$classId:I

.field public mArrayFeatureMap:Ljava/lang/Object;

.field public mCountry:Ljava/lang/Object;

.field public mDevice:Ljava/lang/Object;

.field public mSupportedFeatureSet:Ljava/lang/Object;

.field public mValueFeatureMap:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const-class v0, Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    .line 176
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 180
    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppFeatures;->refreshFeatureList(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/transition/TransitionValuesMaps;)V
    .locals 6

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    .line 10
    new-instance v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 11
    invoke-direct {v0, v1, p2, v3}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Landroidx/transition/TransitionValuesMaps;I)V

    .line 12
    new-instance v1, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 13
    invoke-direct {v1, v3, p2, v4}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Landroidx/transition/TransitionValuesMaps;I)V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    .line 15
    new-instance v4, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    invoke-direct {v4, v3, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;-><init>(Landroid/content/Context;Landroidx/transition/TransitionValuesMaps;)V

    .line 16
    new-instance v3, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 17
    invoke-direct {v3, v5, p2, v2}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Landroidx/transition/TransitionValuesMaps;I)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    .line 21
    iput-object v1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    .line 22
    iput-object v4, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    .line 23
    iput-object v3, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroidx/room/concurrent/FileLock;

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 26
    invoke-direct {v0, v1, v2}, Landroidx/room/concurrent/FileLock;-><init>(IZ)V

    .line 27
    iput-object v0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    .line 30
    const-string v0, ".ttf"

    iput-object v0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    .line 31
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    .line 32
    const-string p1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/text/Layout;)V
    .locals 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v2, Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x4

    invoke-static {v2, v3, v1, v4}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-gez v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v1, Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v2, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v2, Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 41
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    .line 44
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    iput v3, v0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    .line 56
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, v0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    move-object/from16 v4, p3

    .line 58
    iput-object v4, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    .line 59
    sget-object v4, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v5, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;

    invoke-direct {v5, v0, v3}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;-><init>(Lcom/motorola/camera/AppFeatures;I)V

    invoke-static {v4, v5}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    .line 60
    new-instance v3, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;-><init>(Lcom/motorola/camera/AppFeatures;I)V

    invoke-static {v4, v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    .line 61
    iget-object v3, v2, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 62
    sget v4, Landroidx/compose/ui/text/AnnotatedStringKt;->$r8$clinit:I

    .line 63
    iget-object v4, v1, Landroidx/compose/ui/text/AnnotatedString;->paragraphStylesOrNull:Ljava/util/ArrayList;

    iget-object v6, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 64
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-eqz v4, :cond_0

    .line 65
    new-instance v8, Landroidx/viewpager/widget/ViewPager$1;

    const/4 v9, 0x2

    .line 66
    invoke-direct {v8, v9}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 67
    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v7

    .line 68
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v9, Lkotlin/collections/ArrayDeque;

    invoke-direct {v9}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 70
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v10

    move v11, v5

    move v12, v11

    :goto_1
    if-ge v11, v10, :cond_9

    .line 71
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 72
    check-cast v13, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 73
    iget-object v14, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 74
    check-cast v14, Landroidx/compose/ui/text/ParagraphStyle;

    invoke-virtual {v3, v14}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v14

    const/16 v15, 0xe

    invoke-static {v13, v14, v5, v15}, Landroidx/compose/ui/text/AnnotatedString$Range;->copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/ParagraphStyle;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object v13

    iget-object v14, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    iget v15, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iget v13, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    :goto_2
    if-ge v12, v13, :cond_3

    .line 75
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_3

    .line 76
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    move-object/from16 v16, v4

    .line 77
    iget v4, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    move-object/from16 v17, v7

    iget-object v7, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    if-ge v13, v4, :cond_1

    .line 78
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v4, v12, v13, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v13

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    move/from16 v18, v10

    .line 79
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v10, v12, v4, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget v12, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 81
    :goto_4
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 82
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-ne v12, v4, :cond_2

    .line 83
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_4

    :cond_2
    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move/from16 v10, v18

    goto :goto_3

    :cond_3
    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move/from16 v18, v10

    if-ge v12, v13, :cond_4

    .line 84
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v4, v12, v13, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v13

    .line 85
    :cond_4
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    if-eqz v4, :cond_8

    .line 86
    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iget-object v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 87
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    if-ne v4, v13, :cond_5

    if-ne v5, v15, :cond_5

    .line 88
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 89
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    check-cast v7, Landroidx/compose/ui/text/ParagraphStyle;

    check-cast v14, Landroidx/compose/ui/text/ParagraphStyle;

    invoke-virtual {v7, v14}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v5

    invoke-direct {v4, v13, v15, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 90
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    if-ne v4, v5, :cond_6

    .line 91
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v10, v4, v5, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 93
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v4, v13, v15, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 94
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    if-lt v5, v15, :cond_7

    .line 95
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    check-cast v7, Landroidx/compose/ui/text/ParagraphStyle;

    check-cast v14, Landroidx/compose/ui/text/ParagraphStyle;

    invoke-virtual {v7, v14}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v5

    invoke-direct {v4, v13, v15, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 96
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    .line 97
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 98
    :cond_8
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v4, v13, v15, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 99
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move/from16 v10, v18

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v17, v7

    .line 100
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v12, v4, :cond_b

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 101
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 102
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 103
    iget-object v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 104
    invoke-direct {v5, v12, v4, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_7
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 106
    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-ne v4, v5, :cond_a

    .line 107
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_7

    :cond_a
    move v12, v4

    goto :goto_6

    .line 108
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v12, v4, :cond_c

    .line 109
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v12, v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 111
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    .line 112
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v5

    :goto_9
    if-ge v9, v7, :cond_15

    .line 114
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 115
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 116
    iget v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v12, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 117
    new-instance v13, Landroidx/compose/ui/text/AnnotatedString;

    if-eq v11, v12, :cond_e

    .line 118
    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "substring(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    const-string v14, ""

    .line 119
    :goto_a
    sget-object v15, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$1:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    invoke-static {v1, v11, v12, v15}, Landroidx/compose/ui/text/AnnotatedStringKt;->getLocalAnnotations(Landroidx/compose/ui/text/AnnotatedString;IILandroidx/compose/ui/text/SaversKt$LinkSaver$2;)Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_f

    move-object/from16 v15, v17

    .line 120
    :cond_f
    invoke-direct {v13, v14, v15}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 121
    iget-object v10, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 122
    check-cast v10, Landroidx/compose/ui/text/ParagraphStyle;

    .line 123
    iget v15, v10, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    const/high16 v5, -0x80000000

    if-ne v15, v5, :cond_10

    .line 124
    iget v5, v3, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 125
    iget v15, v10, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    move/from16 v20, v5

    move-object/from16 v16, v6

    .line 126
    iget-wide v5, v10, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 127
    iget-object v1, v10, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    move-object/from16 v23, v1

    .line 128
    iget-object v1, v10, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    move-object/from16 v24, v1

    .line 129
    iget-object v1, v10, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    move-object/from16 v25, v1

    .line 130
    iget v1, v10, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    move/from16 v26, v1

    .line 131
    iget v1, v10, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 132
    iget-object v10, v10, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 133
    new-instance v18, Landroidx/compose/ui/text/ParagraphStyle;

    move/from16 v27, v1

    move-wide/from16 v21, v5

    move-object/from16 v28, v10

    move/from16 v19, v15

    invoke-direct/range {v18 .. v28}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    move-object/from16 v10, v18

    goto :goto_b

    :cond_10
    move-object/from16 v16, v6

    .line 134
    :goto_b
    new-instance v1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 135
    new-instance v5, Landroidx/compose/ui/text/TextStyle;

    .line 136
    iget-object v6, v2, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 137
    invoke-virtual {v3, v10}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v10

    .line 138
    invoke-direct {v5, v6, v10}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    .line 139
    iget-object v6, v13, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    if-nez v6, :cond_11

    move-object/from16 v21, v17

    goto :goto_c

    :cond_11
    move-object/from16 v21, v6

    .line 140
    :goto_c
    iget-object v6, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 141
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v13, :cond_14

    .line 143
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 144
    move-object/from16 v2, v18

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    move-object/from16 v25, v3

    .line 145
    iget v3, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    move-object/from16 v20, v5

    iget v5, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 146
    invoke-static {v11, v12, v3, v5}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v18

    if-eqz v18, :cond_13

    if-gt v11, v3, :cond_12

    if-gt v5, v12, :cond_12

    :goto_e
    move/from16 v18, v3

    goto :goto_f

    .line 147
    :cond_12
    const-string/jumbo v18, "placeholder can not overlap with paragraph."

    .line 148
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    goto :goto_e

    .line 149
    :goto_f
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 150
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    move/from16 v19, v5

    sub-int v5, v18, v11

    move-object/from16 v18, v6

    sub-int v6, v19, v11

    .line 151
    invoke-direct {v3, v5, v6, v2}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 152
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_13
    move-object/from16 v18, v6

    :goto_10
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move-object/from16 v6, v18

    move-object/from16 v5, v20

    move-object/from16 v3, v25

    goto :goto_d

    :cond_14
    move-object/from16 v25, v3

    move-object/from16 v20, v5

    .line 153
    new-instance v18, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move-object/from16 v24, p4

    move-object/from16 v23, p5

    move-object/from16 v22, v10

    move-object/from16 v19, v14

    invoke-direct/range {v18 .. v24}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    move-object/from16 v2, v18

    .line 154
    invoke-direct {v1, v2, v11, v12}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;II)V

    .line 155
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v16

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 156
    :cond_15
    iput-object v4, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    .line 47
    iput-object p3, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    .line 48
    iput-object p4, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    .line 49
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    .line 50
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    const/4 p3, 0x0

    .line 51
    invoke-virtual {p1, p2, p3}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 52
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    .line 53
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 p4, p3, 0x1

    .line 54
    aput-wide v0, p1, p3

    move p3, p4

    goto :goto_0

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/util/ListIterator;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    .line 167
    iput-object p3, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    .line 168
    check-cast p4, Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object p4, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    .line 169
    iput-object p5, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    .line 170
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;Lcom/motorola/camera/utility/AudioLensSwitchHelper;Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/util/ArrayList;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    .line 173
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p4, p2, v0}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    .line 159
    invoke-virtual {p4, p3, v0}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    .line 160
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    .line 162
    iput-object p5, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p6, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    iput-object p5, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    .line 9
    new-instance p1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    return-void
.end method

.method public static getMultiValue(Lorg/json/JSONObject;)Ljava/lang/Number;
    .locals 2

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    :try_start_2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    const-string p0, "AppFeatures"

    const-string v0, "get values not formatted correctly"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_2
    :cond_0
    const/16 p0, -0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static supportsVariant(Lorg/json/JSONObject;Z)Z
    .locals 6

    if-eqz p1, :cond_0

    const-string/jumbo v0, "variant"

    goto :goto_0

    :cond_0
    const-string v0, "exclude-variant"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    xor-int/lit8 v1, p1, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v5, p0, v3

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isBuildVariant(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-ne v4, p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :catch_0
    const-string p0, "AppFeatures"

    const-string/jumbo p1, "variant or exclude-variant not formatted correctly"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Property \"autoMetadata\" has not been set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public build()Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " transportName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/EncodedPayload;

    if-nez v1, :cond_1

    const-string v1, " encodedPayload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " eventMillis"

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_3

    const-string v1, " uptimeMillis"

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_4

    const-string v1, " autoMetadata"

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v2, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/android/datatransport/runtime/EncodedPayload;

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, Ljava/util/HashMap;

    invoke-direct/range {v2 .. v9}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;-><init>(Ljava/lang/String;Lcom/google/android/datatransport/runtime/EncodedPayload;JJLjava/util/HashMap;)V

    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public calculateFlexLines(Landroidx/media3/extractor/text/cea/CeaSubtitle;IIIIILjava/util/List;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p6

    iget-object v2, v0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    if-nez p7, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object/from16 v7, p1

    goto :goto_1

    :cond_0
    move-object/from16 v6, p7

    goto :goto_0

    :goto_1
    iput-object v6, v7, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    const/4 v7, -0x1

    if-ne v1, v7, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    if-eqz v3, :cond_3

    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_2

    sget-object v12, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v11

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v11

    :goto_3
    if-eqz v3, :cond_5

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_4

    sget-object v13, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingEnd()I

    move-result v12

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v12

    :goto_4
    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v13

    goto :goto_5

    :cond_6
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_7

    sget-object v14, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingStart()I

    move-result v13

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v14

    goto :goto_6

    :cond_8
    iget-object v14, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_9

    sget-object v15, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingEnd()I

    move-result v14

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    :goto_6
    new-instance v15, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v15}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move/from16 v9, p5

    iput v9, v15, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v11, v12

    iput v11, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget-object v12, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    const/high16 v16, -0x80000000

    move/from16 v18, v16

    const/16 p2, 0x1

    const/4 v8, 0x0

    const/16 v17, 0x0

    :goto_7
    if-ge v9, v12, :cond_36

    invoke-virtual {v2, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_c

    add-int/lit8 v7, v12, -0x1

    if-ne v9, v7, :cond_b

    iget v7, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move/from16 v19, v3

    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr v7, v3

    if-eqz v7, :cond_a

    iput v8, v15, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    iput v9, v15, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_8
    move/from16 p5, v10

    goto :goto_9

    :cond_b
    move/from16 v19, v3

    goto :goto_8

    :cond_c
    move/from16 v19, v3

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 p5, v10

    const/16 v10, 0x8

    if-ne v3, v10, :cond_e

    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v15, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    iget v7, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v10, v12, -0x1

    if-ne v9, v10, :cond_d

    sub-int/2addr v7, v3

    if-eqz v7, :cond_d

    iput v8, v15, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    iput v9, v15, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_9
    move/from16 v7, p2

    move/from16 v10, p5

    move v3, v1

    move/from16 v23, v4

    move/from16 v20, v12

    move/from16 p7, v13

    move/from16 v25, v14

    const/4 v13, -0x1

    move/from16 v4, p4

    goto/16 :goto_27

    :cond_e
    instance-of v3, v7, Landroid/widget/CompoundButton;

    if-eqz v3, :cond_13

    move-object v3, v7

    check-cast v3, Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/google/android/flexbox/FlexItem;

    check-cast v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    move-object/from16 p7, v3

    iget v3, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    move/from16 v20, v12

    iget v12, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    invoke-virtual/range {p7 .. p7}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    if-nez v21, :cond_f

    const/16 v22, 0x0

    goto :goto_a

    :cond_f
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v22

    :goto_a
    if-nez v21, :cond_10

    const/16 v21, 0x0

    :goto_b
    move/from16 p7, v13

    const/4 v13, -0x1

    goto :goto_c

    :cond_10
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v21

    goto :goto_b

    :goto_c
    if-ne v3, v13, :cond_11

    move/from16 v3, v22

    :cond_11
    iput v3, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    if-ne v12, v13, :cond_12

    move/from16 v12, v21

    :cond_12
    iput v12, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    goto :goto_d

    :cond_13
    move/from16 v20, v12

    move/from16 p7, v13

    :goto_d
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexItem;

    move-object v10, v3

    check-cast v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v12, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_14

    iget-object v12, v15, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v19, :cond_15

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_e

    :cond_15
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_e
    iget v13, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    move-object/from16 v21, v3

    iget v3, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    move/from16 v22, v3

    iget v3, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v23, v3, v23

    if-eqz v23, :cond_16

    move/from16 v23, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v4, v3, :cond_16

    int-to-float v3, v5

    mul-float v3, v3, v23

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    :cond_16
    if-eqz v19, :cond_17

    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v11

    move/from16 v23, v3

    move-object/from16 v3, v21

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v3, v3, v23

    move/from16 v23, v4

    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    move/from16 v24, v13

    iget v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    move/from16 v25, v14

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result v14

    invoke-static {v4, v13, v3, v12, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    add-int v13, p7, v25

    move-object/from16 v4, v21

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v13

    move-object/from16 v12, v21

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v4

    add-int/2addr v12, v8

    move-object/from16 v4, v21

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v14, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result v1

    invoke-static {v13, v14, v12, v4, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-virtual {v7, v3, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v9, v3, v1, v7}, Lcom/motorola/camera/AppFeatures;->updateMeasureCache(IIILandroid/view/View;)V

    goto :goto_f

    :cond_17
    move/from16 v23, v4

    move/from16 v24, v13

    move/from16 v25, v14

    add-int v13, p7, v25

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v13

    move-object/from16 v3, v21

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    add-int/2addr v3, v8

    move-object/from16 v1, v21

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result v14

    invoke-static {v4, v13, v3, v1, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    move-object/from16 v3, v21

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v11

    move-object/from16 v4, v21

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v3

    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result v14

    invoke-static {v3, v13, v4, v12, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    invoke-virtual {v7, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v9, v1, v3, v7}, Lcom/motorola/camera/AppFeatures;->updateMeasureCache(IIILandroid/view/View;)V

    :goto_f
    invoke-virtual {v2, v7, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    invoke-virtual {v0, v7, v9}, Lcom/motorola/camera/AppFeatures;->checkSizeConstraints(Landroid/view/View;I)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move/from16 v4, v17

    invoke-static {v4, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v17

    iget v1, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eqz v19, :cond_18

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    goto :goto_10

    :cond_18
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :goto_10
    if-eqz v19, :cond_19

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_11

    :cond_19
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_11
    add-int/2addr v12, v4

    if-eqz v19, :cond_1a

    move-object/from16 v4, v21

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_12

    :cond_1a
    move-object/from16 v4, v21

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_12
    add-int/2addr v4, v12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    iget v13, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v13, :cond_1c

    :cond_1b
    :goto_13
    move/from16 v1, p2

    goto/16 :goto_19

    :cond_1c
    iget-boolean v13, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    if-eqz v13, :cond_1d

    goto :goto_16

    :cond_1d
    if-nez v23, :cond_1e

    goto :goto_13

    :cond_1e
    iget v13, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1f

    add-int/lit8 v12, v12, 0x1

    if-gt v13, v12, :cond_1f

    goto :goto_13

    :cond_1f
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    :goto_14
    add-int/2addr v12, v13

    goto :goto_15

    :cond_20
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    goto :goto_14

    :goto_15
    if-lez v12, :cond_21

    add-int/2addr v4, v12

    :cond_21
    add-int/2addr v1, v4

    if-ge v5, v1, :cond_1b

    :goto_16
    iget v1, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr v1, v4

    if-lez v1, :cond_23

    if-lez v9, :cond_22

    add-int/lit8 v1, v9, -0x1

    goto :goto_17

    :cond_22
    const/4 v1, 0x0

    :goto_17
    iput v8, v15, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    iput v1, v15, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, v15, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v8, v1

    :cond_23
    if-eqz v19, :cond_24

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v13, -0x1

    if-ne v1, v13, :cond_25

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v1

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v1

    add-int/2addr v4, v8

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v12, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result v14

    invoke-static {v12, v13, v4, v1, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-virtual {v7, v3, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v7, v9}, Lcom/motorola/camera/AppFeatures;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_18

    :cond_24
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v13, -0x1

    if-ne v1, v13, :cond_25

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v1

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v1

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v1

    add-int/2addr v4, v8

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v12, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result v14

    invoke-static {v12, v13, v4, v1, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    invoke-virtual {v7, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v7, v9}, Lcom/motorola/camera/AppFeatures;->checkSizeConstraints(Landroid/view/View;I)V

    :cond_25
    :goto_18
    new-instance v15, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v15}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move/from16 v1, p2

    iput v1, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iput v11, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iput v9, v15, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    move/from16 v1, v16

    goto :goto_1a

    :goto_19
    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v3, v1

    iput v3, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move/from16 v1, v18

    :goto_1a
    iget-boolean v3, v15, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    const/4 v4, 0x0

    cmpl-float v12, v22, v4

    if-eqz v12, :cond_26

    const/4 v12, 0x1

    goto :goto_1b

    :cond_26
    const/4 v12, 0x0

    :goto_1b
    or-int/2addr v3, v12

    iput-boolean v3, v15, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    iget-boolean v3, v15, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    cmpl-float v4, v24, v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    goto :goto_1c

    :cond_27
    const/4 v4, 0x0

    :goto_1c
    or-int/2addr v3, v4

    iput-boolean v3, v15, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    iget-object v3, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, [I

    if-eqz v3, :cond_28

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    aput v4, v3, v9

    :cond_28
    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eqz v19, :cond_29

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    goto :goto_1d

    :cond_29
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :goto_1d
    if-eqz v19, :cond_2a

    move-object/from16 v12, v21

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1e

    :cond_2a
    move-object/from16 v12, v21

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1e
    add-int/2addr v12, v4

    if-eqz v19, :cond_2b

    move-object/from16 v4, v21

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1f

    :cond_2b
    move-object/from16 v4, v21

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1f
    add-int/2addr v4, v12

    add-int/2addr v4, v3

    iput v4, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    add-float v3, v3, v22

    iput v3, v15, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    add-float v3, v3, v24

    iput v3, v15, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    sget-object v3, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    add-int/2addr v4, v3

    iput v4, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int/2addr v4, v3

    iput v4, v15, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    goto :goto_20

    :cond_2c
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    add-int/2addr v4, v3

    iput v4, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int/2addr v4, v3

    iput v4, v15, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    :goto_20
    if-eqz v19, :cond_2d

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_21

    :cond_2d
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :goto_21
    if-eqz v19, :cond_2e

    move-object/from16 v4, v21

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_22

    :cond_2e
    move-object/from16 v4, v21

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_22
    add-int/2addr v4, v3

    if-eqz v19, :cond_2f

    move-object/from16 v3, v21

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_23

    :cond_2f
    move-object/from16 v3, v21

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_23
    add-int/2addr v3, v4

    invoke-virtual {v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v15, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz v19, :cond_31

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v4

    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v15, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    goto :goto_24

    :cond_30
    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v7

    sub-int/2addr v4, v7

    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v15, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    :cond_31
    :goto_24
    add-int/lit8 v12, v20, -0x1

    if-ne v9, v12, :cond_32

    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_32

    iput v8, v15, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    iput v9, v15, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v8, v3

    :cond_32
    move/from16 v3, p6

    const/4 v13, -0x1

    if-eq v3, v13, :cond_33

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_33

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    iget v4, v4, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    if-lt v4, v3, :cond_34

    if-lt v9, v3, :cond_34

    if-nez p5, :cond_34

    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    neg-int v4, v4

    move v8, v4

    move v10, v7

    :goto_25
    move/from16 v4, p4

    goto :goto_26

    :cond_33
    const/4 v7, 0x1

    :cond_34
    move/from16 v10, p5

    goto :goto_25

    :goto_26
    if-le v8, v4, :cond_35

    if-eqz v10, :cond_35

    goto :goto_28

    :cond_35
    move/from16 v18, v1

    :goto_27
    add-int/lit8 v9, v9, 0x1

    move v1, v3

    move/from16 p2, v7

    move v7, v13

    move/from16 v3, v19

    move/from16 v12, v20

    move/from16 v4, v23

    move/from16 v14, v25

    move/from16 v13, p7

    goto/16 :goto_7

    :cond_36
    :goto_28
    return-void
.end method

.method public checkSizeConstraints(Landroid/view/View;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    :goto_0
    move v1, v3

    move v3, v4

    goto :goto_1

    :cond_0
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    if-ge v2, v5, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    if-le v2, v0, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/motorola/camera/AppFeatures;->updateMeasureCache(IIILandroid/view/View;)V

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method public clearFlexLines(Ljava/util/List;I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_2

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast p0, [J

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v0, 0x0

    if-le p2, p1, :cond_3

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void

    :cond_3
    invoke-static {p0, p2, p1, v0, v1}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public determineMainSize(III)V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v2, [Z

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    array-length v5, v2

    if-ge v5, v1, :cond_1

    array-length v2, v2

    mul-int/2addr v2, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_0
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-lt p3, v1, :cond_2

    goto/16 :goto_8

    :cond_2
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid flex direction: "

    invoke-static {v1, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLargestMainSize()I

    move-result v4

    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    :goto_3
    add-int/2addr v2, v1

    move v10, v2

    move v9, v4

    goto :goto_5

    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLargestMainSize()I

    move-result v5

    if-ne v1, v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v4, v1

    :goto_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    goto :goto_3

    :goto_5
    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, [I

    if-eqz v1, :cond_8

    aget v3, v1, p3

    :cond_8
    iget-object p3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge v3, v0, :cond_b

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v1, v9, :cond_9

    iget-boolean v2, v8, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    if-eqz v2, :cond_9

    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/motorola/camera/AppFeatures;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_7

    :cond_9
    move-object v5, p0

    move v6, p1

    move v7, p2

    if-le v1, v9, :cond_a

    iget-boolean p0, v8, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    if-eqz p0, :cond_a

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/motorola/camera/AppFeatures;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    move p1, v6

    move p2, v7

    goto :goto_6

    :cond_b
    :goto_8
    return-void
.end method

.method public ensureIndexToFlexLine(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, [I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    return-void

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public ensureMeasureSpecCache(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v0, [J

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    return-void

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public ensureMeasuredSizeCache(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v0, [J

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    return-void

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget-object v1, v0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-lez v6, :cond_15

    iget v6, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v4, v6, :cond_0

    goto/16 :goto_c

    :cond_0
    sub-int v7, v4, v6

    int-to-float v7, v7

    div-float/2addr v7, v2

    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v2, p5, v2

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_1

    const/high16 v2, -0x80000000

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v2, 0x0

    move v8, v2

    move v9, v8

    move v10, v5

    :goto_0
    iget v11, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v2, v11, :cond_14

    iget v11, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v11, v2

    invoke-virtual {v1, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3

    :cond_2
    move/from16 v15, p1

    move/from16 v16, v2

    move/from16 v21, v5

    move v14, v7

    move/from16 v25, v8

    move/from16 v7, p2

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexItem;

    iget v14, v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const/16 v18, 0x20

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move/from16 v21, v5

    const/4 v5, 0x1

    if-eqz v14, :cond_4

    if-ne v14, v5, :cond_5

    :cond_4
    move/from16 v15, p1

    move/from16 p6, v5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move/from16 p6, v5

    iget-object v5, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v5, [J

    if-eqz v5, :cond_6

    aget-wide v22, v5, v11

    shr-long v4, v22, v18

    long-to-int v14, v4

    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v5, [J

    if-eqz v5, :cond_7

    aget-wide v4, v5, v11

    long-to-int v4, v4

    :cond_7
    iget-object v5, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v5, [Z

    aget-boolean v5, v5, v11

    if-nez v5, :cond_c

    move-object v5, v13

    check-cast v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    cmpl-float v18, v15, v21

    if-lez v18, :cond_c

    int-to-float v4, v14

    mul-float v14, v7, v15

    add-float/2addr v14, v4

    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_8

    add-float/2addr v14, v10

    move/from16 v10, v21

    :cond_8
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    if-le v4, v5, :cond_9

    iget-object v4, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v4, [Z

    aput-boolean p6, v4, v11

    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    sub-float/2addr v4, v15

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move/from16 v8, p6

    move v4, v5

    goto :goto_2

    :cond_9
    int-to-float v5, v4

    sub-float/2addr v14, v5

    add-float/2addr v14, v10

    move v10, v4

    float-to-double v4, v14

    cmpl-double v15, v4, v19

    if-lez v15, :cond_a

    add-int/lit8 v10, v10, 0x1

    sub-double v4, v4, v19

    :goto_1
    double-to-float v4, v4

    move/from16 v26, v10

    move v10, v4

    move/from16 v4, v26

    goto :goto_2

    :cond_a
    cmpg-double v15, v4, v16

    if-gez v15, :cond_b

    add-int/lit8 v10, v10, -0x1

    add-double v4, v4, v19

    goto :goto_1

    :cond_b
    move v4, v10

    move v10, v14

    :goto_2
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v15, p1

    invoke-virtual {v0, v15, v13, v5}, Lcom/motorola/camera/AppFeatures;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v5

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v12, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual {v0, v11, v5, v4, v12}, Lcom/motorola/camera/AppFeatures;->updateMeasureCache(IIILandroid/view/View;)V

    invoke-virtual {v1, v12, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    move v4, v14

    move/from16 v14, v16

    goto :goto_3

    :cond_c
    move/from16 v15, p1

    :goto_3
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v9

    iget v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v9

    add-int/2addr v14, v5

    iput v14, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v16, v2

    move v14, v7

    move/from16 v7, p2

    goto/16 :goto_9

    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v5, [J

    if-eqz v5, :cond_d

    aget-wide v4, v5, v11

    long-to-int v4, v4

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v14, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v14, [J

    if-eqz v14, :cond_e

    aget-wide v23, v14, v11

    move v14, v7

    move/from16 v25, v8

    shr-long v7, v23, v18

    long-to-int v5, v7

    goto :goto_5

    :cond_e
    move v14, v7

    move/from16 v25, v8

    :goto_5
    iget-object v7, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v7, [Z

    aget-boolean v7, v7, v11

    if-nez v7, :cond_13

    move-object v7, v13

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v8, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    cmpl-float v18, v8, v21

    if-lez v18, :cond_13

    int-to-float v4, v4

    mul-float v5, v14, v8

    add-float/2addr v5, v4

    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_f

    add-float/2addr v5, v10

    move/from16 v10, v21

    :cond_f
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v7, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    if-le v4, v7, :cond_10

    iget-object v4, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v4, [Z

    aput-boolean p6, v4, v11

    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    sub-float/2addr v4, v8

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move/from16 v8, p6

    move v4, v7

    goto :goto_7

    :cond_10
    int-to-float v7, v4

    sub-float/2addr v5, v7

    add-float/2addr v5, v10

    float-to-double v7, v5

    cmpl-double v10, v7, v19

    if-lez v10, :cond_12

    add-int/lit8 v4, v4, 0x1

    sub-double v7, v7, v19

    :goto_6
    double-to-float v5, v7

    :cond_11
    move v10, v5

    move/from16 v8, v25

    goto :goto_7

    :cond_12
    cmpg-double v10, v7, v16

    if-gez v10, :cond_11

    add-int/lit8 v4, v4, -0x1

    add-double v7, v7, v19

    goto :goto_6

    :goto_7
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v7, p2

    invoke-virtual {v0, v7, v13, v5}, Lcom/motorola/camera/AppFeatures;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v5

    move/from16 v16, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual {v0, v11, v2, v5, v12}, Lcom/motorola/camera/AppFeatures;->updateMeasureCache(IIILandroid/view/View;)V

    invoke-virtual {v1, v12, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    move/from16 v5, v17

    goto :goto_8

    :cond_13
    move/from16 v7, p2

    move/from16 v16, v2

    move/from16 v8, v25

    :goto_8
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v2

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v2

    invoke-virtual {v1, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v9

    iget v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v9

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v4, v2

    :goto_9
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v9, v4

    goto :goto_b

    :goto_a
    move/from16 v8, v25

    :goto_b
    add-int/lit8 v2, v16, 0x1

    move/from16 v4, p4

    move v7, v14

    move/from16 v5, v21

    goto/16 :goto_0

    :cond_14
    move/from16 v15, p1

    move/from16 v7, p2

    move/from16 v25, v8

    if-eqz v25, :cond_15

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eq v6, v1, :cond_15

    const/4 v6, 0x1

    move/from16 v4, p4

    move/from16 v5, p5

    move v2, v7

    move v1, v15

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/AppFeatures;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_15
    :goto_c
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)V

    return-object v1
.end method

.method public getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p1

    check-cast p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p1

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    add-int/2addr v0, p3

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result p0

    invoke-static {p3, v1, v0, p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    if-le p1, p3, :cond_0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    if-ge p1, p2, :cond_1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    return p0
.end method

.method public getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, p1

    check-cast p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, p1

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, p1

    add-int/2addr v0, p3

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result p0

    invoke-static {p3, v1, v0, p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    if-le p1, p3, :cond_0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    if-ge p1, p2, :cond_1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    return p0
.end method

.method public getCues(J)Ljava/util/List;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroidx/media3/extractor/text/ttml/TtmlNode;

    iget-object v1, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v3, v0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Ljava/util/HashMap;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, Landroidx/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-wide/from16 v4, p1

    invoke-virtual {v2, v4, v5, v3, v9}, Landroidx/media3/extractor/text/ttml/TtmlNode;->traverseForImage(JLjava/lang/String;Ljava/util/ArrayList;)V

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    const/4 v5, 0x0

    iget-object v6, v2, Landroidx/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-wide/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/extractor/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/TreeMap;)V

    iget-object v3, v2, Landroidx/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-object v5, v1

    move-object v6, v8

    move-object v8, v7

    move-object v7, v3

    move-wide/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Landroidx/media3/extractor/text/ttml/TtmlNode;->traverseForStyle(JLjava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/TreeMap;)V

    move-object v7, v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    array-length v8, v5

    invoke-static {v5, v4, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->position:F

    iget v14, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->line:F

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->lineAnchor:I

    iget v8, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->width:F

    iget v9, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->height:F

    iget v3, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->verticalType:I

    move/from16 v22, v9

    new-instance v9, Landroidx/media3/common/text/Cue;

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/high16 v19, -0x80000000

    const v20, -0x800001

    const/16 v23, 0x0

    const/high16 v24, -0x1000000

    const/16 v26, 0x0

    move-object v11, v10

    move-object v12, v10

    move/from16 v25, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move/from16 v21, v8

    invoke-direct/range {v9 .. v26}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/text/Cue$Builder;

    iget-object v5, v2, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-class v8, Landroidx/media3/extractor/text/ttml/DeleteTextSpan;

    invoke-virtual {v5, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroidx/media3/extractor/text/ttml/DeleteTextSpan;

    array-length v8, v7

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    const-string v12, ""

    invoke-virtual {v5, v11, v10, v12}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_3
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x20

    if-ge v7, v8, :cond_5

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    add-int/lit8 v8, v7, 0x1

    move v10, v8

    :goto_4
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    sub-int/2addr v10, v8

    if-lez v10, :cond_4

    add-int/2addr v10, v7

    invoke-virtual {v5, v7, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_6

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_6

    invoke-virtual {v5, v4, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    move v7, v4

    :goto_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v8

    const/16 v11, 0xa

    if-ge v7, v10, :cond_8

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_7

    add-int/lit8 v11, v7, 0x2

    invoke-virtual {v5, v10, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_9

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_9

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v5, v7, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    move v7, v4

    :goto_6
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v8

    if-ge v7, v10, :cond_b

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_a

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v11, :cond_a

    invoke-virtual {v5, v7, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_c

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_c

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_c
    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->line:F

    iget v7, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->lineType:I

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->line:F

    iput v7, v2, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->lineAnchor:I

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->position:F

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->position:F

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->width:F

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->size:F

    iget v5, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->textSize:F

    iget v7, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->textSizeType:I

    iput v5, v2, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iput v7, v2, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iget v3, v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;->verticalType:I

    iput v3, v2, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    invoke-virtual {v2}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    return-object v1
.end method

.method public getDownstreamHorizontal(IZ)F
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p0

    return p0
.end method

.method public getEventTime(I)J
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast p0, [J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast p0, [J

    array-length p0, p0

    return p0
.end method

.method public getHasStaleResolvedFonts()Z
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    iget-object v3, v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v3}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getHorizontalPosition(IZZ)F
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v3, Landroid/text/Layout;

    if-nez p3, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/motorola/camera/AppFeatures;->getDownstreamHorizontal(IZ)F

    move-result v0

    return v0

    :cond_0
    if-gtz v1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    :goto_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    if-eq v5, v1, :cond_3

    if-eq v6, v1, :cond_3

    goto :goto_1

    :cond_3
    if-ne v5, v1, :cond_4

    if-eqz p3, :cond_6

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :cond_6
    :goto_1
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    if-eq v1, v5, :cond_7

    if-eq v1, v6, :cond_7

    invoke-virtual/range {p0 .. p2}, Lcom/motorola/camera/AppFeatures;->getDownstreamHorizontal(IZ)F

    move-result v0

    return v0

    :cond_7
    if-eqz v1, :cond_39

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v1, v7, :cond_8

    goto/16 :goto_1e

    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-string v9, "<this>"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9, v8}, Lkotlin/collections/CollectionsKt__CollectionsKt;->rangeCheck$CollectionsKt__CollectionsKt(II)V

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/4 v11, 0x0

    :goto_2
    if-gt v11, v8, :cond_a

    add-int v12, v11, v8

    ushr-int/2addr v12, v9

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Comparable;

    invoke-static {v13, v7}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v13

    if-gez v13, :cond_9

    add-int/lit8 v11, v12, 0x1

    goto :goto_2

    :cond_9
    if-lez v13, :cond_b

    add-int/lit8 v8, v12, -0x1

    goto :goto_2

    :cond_a
    add-int/2addr v11, v9

    neg-int v12, v11

    :cond_b
    if-gez v12, :cond_c

    add-int/2addr v12, v9

    neg-int v7, v12

    goto :goto_3

    :cond_c
    add-int/lit8 v7, v12, 0x1

    :goto_3
    if-eqz p3, :cond_d

    if-lez v7, :cond_d

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-ne v1, v11, :cond_d

    move v7, v8

    :cond_d
    if-nez v7, :cond_e

    const/4 v8, 0x0

    goto :goto_4

    :cond_e
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    :goto_4
    invoke-virtual {v3, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    const/4 v11, -0x1

    if-ne v8, v11, :cond_f

    move v8, v9

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v0, v6, v5}, Lcom/motorola/camera/AppFeatures;->lineEndToVisibleEnd(II)I

    move-result v6

    if-nez v7, :cond_10

    const/4 v12, 0x0

    goto :goto_6

    :cond_10
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    :goto_6
    sub-int v13, v5, v12

    sub-int v12, v6, v12

    iget-object v14, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v15, [Z

    aget-boolean v16, v15, v7

    const/16 v17, 0x0

    if-eqz v16, :cond_11

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Bidi;

    move/from16 v27, v4

    move/from16 v26, v6

    move v4, v11

    goto/16 :goto_d

    :cond_11
    if-nez v7, :cond_12

    const/4 v9, 0x0

    goto :goto_7

    :cond_12
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    :goto_7
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v11

    sub-int v10, v11, v9

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v15, [C

    move/from16 v26, v6

    if-eqz v15, :cond_13

    array-length v6, v15

    if-ge v6, v10, :cond_14

    :cond_13
    new-array v15, v10, [C

    :cond_14
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    move/from16 v27, v4

    const/4 v4, 0x0

    invoke-static {v6, v9, v11, v15, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    invoke-static {v15, v4, v10}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v6

    if-eqz v6, :cond_18

    if-nez v7, :cond_15

    const/4 v4, 0x0

    goto :goto_8

    :cond_15
    add-int/lit8 v4, v7, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v4

    :goto_8
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_16

    const/16 v24, 0x1

    goto :goto_9

    :cond_16
    const/16 v24, 0x0

    :goto_9
    new-instance v18, Ljava/text/Bidi;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    move/from16 v23, v10

    move-object/from16 v19, v15

    invoke-direct/range {v18 .. v24}, Ljava/text/Bidi;-><init>([CI[BIII)V

    invoke-virtual/range {v18 .. v18}, Ljava/text/Bidi;->getRunCount()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_17

    :goto_a
    move-object/from16 v2, v17

    goto :goto_b

    :cond_17
    move-object/from16 v2, v18

    goto :goto_b

    :cond_18
    const/4 v4, -0x1

    const/4 v6, 0x1

    goto :goto_a

    :goto_b
    invoke-virtual {v14, v7, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    aput-boolean v6, v25, v7

    if-eqz v2, :cond_1a

    iget-object v6, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v6, [C

    if-ne v15, v6, :cond_19

    move-object/from16 v15, v17

    goto :goto_c

    :cond_19
    move-object v15, v6

    :cond_1a
    :goto_c
    iput-object v15, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    :goto_d
    if-eqz v2, :cond_1b

    invoke-virtual {v2, v13, v12}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    move-result-object v17

    :cond_1b
    move-object/from16 v2, v17

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1c

    move/from16 v16, v7

    :goto_e
    move/from16 v2, v27

    const/4 v11, 0x0

    goto/16 :goto_1b

    :cond_1c
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    move-result v6

    new-array v7, v6, [Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v6, :cond_1e

    new-instance v10, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    invoke-virtual {v2, v9}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v2, v9}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v2, v9}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v13

    rem-int/lit8 v13, v13, 0x2

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1d

    const/4 v13, 0x1

    goto :goto_10

    :cond_1d
    const/4 v13, 0x0

    :goto_10
    invoke-direct {v10, v11, v12, v13}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;-><init>(IIZ)V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_1e
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    move-result v9

    new-array v10, v9, [B

    const/4 v11, 0x0

    :goto_11
    if-ge v11, v9, :cond_1f

    invoke-virtual {v2, v11}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_1f
    const/4 v11, 0x0

    invoke-static {v10, v11, v7, v11, v6}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    if-ne v1, v5, :cond_28

    move v0, v11

    :goto_12
    if-ge v0, v6, :cond_21

    aget-object v2, v7, v0

    iget v2, v2, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    if-ne v2, v1, :cond_20

    goto :goto_13

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_21
    move v0, v4

    :goto_13
    aget-object v1, v7, v0

    if-nez p2, :cond_23

    iget-boolean v1, v1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    if-ne v8, v1, :cond_22

    goto :goto_14

    :cond_22
    move v10, v8

    goto :goto_15

    :cond_23
    :goto_14
    if-nez v8, :cond_24

    const/4 v10, 0x1

    goto :goto_15

    :cond_24
    move v10, v11

    :goto_15
    if-nez v0, :cond_25

    if-eqz v10, :cond_25

    move/from16 v2, v27

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    return v0

    :cond_25
    move/from16 v2, v27

    const/16 v16, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_26

    if-nez v10, :cond_26

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    return v0

    :cond_26
    if-eqz v10, :cond_27

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v7, v0

    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_27
    add-int/lit8 v0, v0, 0x1

    aget-object v0, v7, v0

    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_28
    move/from16 v9, v26

    move/from16 v2, v27

    if-le v1, v9, :cond_29

    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/AppFeatures;->lineEndToVisibleEnd(II)I

    move-result v0

    goto :goto_16

    :cond_29
    move v0, v1

    :goto_16
    move v1, v11

    :goto_17
    if-ge v1, v6, :cond_2b

    aget-object v5, v7, v1

    iget v5, v5, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    if-ne v5, v0, :cond_2a

    goto :goto_18

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2b
    move v1, v4

    :goto_18
    aget-object v0, v7, v1

    if-nez p2, :cond_2e

    iget-boolean v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    if-ne v8, v0, :cond_2c

    goto :goto_19

    :cond_2c
    if-nez v8, :cond_2d

    const/4 v10, 0x1

    goto :goto_1a

    :cond_2d
    move v10, v11

    goto :goto_1a

    :cond_2e
    :goto_19
    move v10, v8

    :goto_1a
    if-nez v1, :cond_2f

    if-eqz v10, :cond_2f

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    return v0

    :cond_2f
    const/16 v16, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_30

    if-nez v10, :cond_30

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    return v0

    :cond_30
    if-eqz v10, :cond_31

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v7, v1

    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_31
    add-int/lit8 v1, v1, 0x1

    aget-object v0, v7, v1

    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_32
    const/16 v16, 0x1

    goto/16 :goto_e

    :goto_1b
    invoke-virtual {v3, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    if-nez p2, :cond_33

    if-ne v8, v0, :cond_35

    :cond_33
    if-nez v8, :cond_34

    move/from16 v8, v16

    goto :goto_1c

    :cond_34
    move v8, v11

    :cond_35
    :goto_1c
    if-ne v1, v5, :cond_36

    move v9, v8

    goto :goto_1d

    :cond_36
    if-nez v8, :cond_37

    move/from16 v9, v16

    goto :goto_1d

    :cond_37
    move v9, v11

    :goto_1d
    if-eqz v9, :cond_38

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    return v0

    :cond_38
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    return v0

    :cond_39
    :goto_1e
    invoke-virtual/range {p0 .. p2}, Lcom/motorola/camera/AppFeatures;->getDownstreamHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getMaxIntrinsicWidth()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast p0, [J

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZ)I

    move-result p1

    array-length p0, p0

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2

    :catch_0
    move-exception p0

    const-string p1, "AppFeatures"

    const-string v0, "getValue: value cannot be cast accordingly"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method public layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move v1, v2

    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/4 v3, 0x2

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p2, 0x4

    if-eq v1, p2, :cond_7

    return-void

    :cond_1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq p0, v3, :cond_2

    iget p0, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p2

    sub-int/2addr p0, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p4, p0

    add-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    iget p0, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p2

    add-int/2addr p2, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p4, p0

    sub-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v2, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, p2

    div-int/2addr v2, v3

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq p0, v3, :cond_4

    add-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_4
    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_5
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq p0, v3, :cond_6

    add-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int p0, p4, p0

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p0, p2

    sub-int/2addr p4, p2

    invoke-virtual {p1, p3, p0, p5, p4}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p2

    sub-int/2addr p6, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p6

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p0, p5, p2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_7
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq p0, v3, :cond_8

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p4, p0

    add-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_8
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p4, p0

    sub-int/2addr p6, p0

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move p0, v1

    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_5

    const/4 p2, 0x4

    if-eq p0, p2, :cond_5

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/2addr v0, v1

    if-nez p3, :cond_2

    add-int/2addr p4, v0

    add-int/2addr p6, v0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    sub-int/2addr p4, v0

    sub-int/2addr p6, v0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_3
    if-nez p3, :cond_4

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p4, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, p0

    add-int/2addr p6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p6, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p6, p0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_4
    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p4

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, p3

    sub-int/2addr p6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p6

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p0, p5, p2, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_5
    if-nez p3, :cond_6

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p0

    add-int/2addr p6, p0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, p0

    sub-int/2addr p6, p0

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public lineEndToVisibleEnd(II)I
    .locals 2

    :goto_0
    if-le p1, p2, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v0, Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1680

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v1, 0x200a

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x2007

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x205f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public onSessionClose()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v1, Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearModesBuilders()V

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/callables/CloseSessionListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/motorola/camera/device/callables/CloseSessionListener;->onSessionClose()V

    :cond_1
    return-void
.end method

.method public refreshFeatureList(Landroid/content/Context;)V
    .locals 12

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->getTotalRAMMiB(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v2, v2, 0x3ff

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2, v3}, Lcom/motorola/camera/shared/Util;->getDeviceNameWithRAM(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    invoke-static {p1}, Lcom/motorola/camera/CountryDetector;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    const-string v2, "array"

    iget-object v3, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumSet;

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/Util;->LOW_DEVICES:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/Util;->isSampleApk(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v6, "sample"

    :cond_2
    sget-object v7, Lcom/motorola/camera/shared/Util$ConfigFile;->$VALUES:[Lcom/motorola/camera/shared/Util$ConfigFile;

    const-string v7, "cancunf_taipei"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "app_feature_"

    if-eqz v7, :cond_3

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    invoke-static {v8, v6}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {p1, v5}, Lcom/motorola/camera/JsonConfig;->getAssetConfig(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v6, "fs"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->clear()V

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    move v6, p1

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    const-string v8, "AppFeatures"

    if-ge v6, v7, :cond_8

    :try_start_1
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "f"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/camera/AppFeatures$Feature;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/AppFeatures$Feature;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v7}, Lcom/motorola/camera/AppFeatures;->getMultiValue(Lorg/json/JSONObject;)Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v11, :cond_5

    :try_start_2
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    :try_start_3
    const-string v7, "array field improperly formatted"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v10, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const-string/jumbo v8, "region"

    invoke-virtual {p0, v8, v7}, Lcom/motorola/camera/AppFeatures;->supportsRegion(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "exclude-region"

    invoke-virtual {p0, v8, v7}, Lcom/motorola/camera/AppFeatures;->supportsRegion(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/motorola/camera/AppFeatures;->supportsVariant(Lorg/json/JSONObject;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v7, p1}, Lcom/motorola/camera/AppFeatures;->supportsVariant(Lorg/json/JSONObject;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "refreshFeatureList dur:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p0, v8}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz p0, :cond_1

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget-object v1, v0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-lez v7, :cond_15

    if-le v4, v2, :cond_0

    goto/16 :goto_b

    :cond_0
    sub-int v7, v2, v4

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v5, p5, v5

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_1

    const/high16 v5, -0x80000000

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v5, 0x0

    move v8, v5

    move v9, v8

    move v10, v6

    :goto_0
    iget v11, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v5, v11, :cond_14

    iget v11, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v11, v5

    invoke-virtual {v1, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3

    :cond_2
    move/from16 v22, v6

    move/from16 v25, v7

    move v15, v8

    move v8, v5

    move/from16 v5, p2

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexItem;

    iget v14, v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v20, 0x20

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v22, v6

    const/4 v6, 0x1

    if-eqz v14, :cond_4

    if-ne v14, v6, :cond_5

    :cond_4
    move/from16 p6, v6

    move/from16 v25, v7

    move v15, v8

    move/from16 v7, p1

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move/from16 p6, v6

    iget-object v6, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v6, [J

    if-eqz v6, :cond_6

    aget-wide v23, v6, v11

    move/from16 v25, v7

    shr-long v6, v23, v20

    long-to-int v14, v6

    goto :goto_1

    :cond_6
    move/from16 v25, v7

    :goto_1
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v7, [J

    if-eqz v7, :cond_7

    aget-wide v6, v7, v11

    long-to-int v6, v6

    :cond_7
    iget-object v7, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v7, [Z

    aget-boolean v7, v7, v11

    if-nez v7, :cond_c

    move-object v7, v13

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    cmpl-float v20, v15, v22

    if-lez v20, :cond_c

    int-to-float v6, v14

    mul-float v14, v25, v15

    sub-float/2addr v6, v14

    iget v14, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-ne v5, v14, :cond_8

    add-float/2addr v6, v10

    move/from16 v10, v22

    :cond_8
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v7, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    if-ge v14, v7, :cond_9

    iget-object v6, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v6, [Z

    aput-boolean p6, v6, v11

    iget v6, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    sub-float/2addr v6, v15

    iput v6, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move/from16 v8, p6

    move v14, v7

    goto :goto_3

    :cond_9
    int-to-float v7, v14

    sub-float/2addr v6, v7

    add-float/2addr v6, v10

    move v15, v8

    float-to-double v7, v6

    cmpl-double v10, v7, v18

    if-lez v10, :cond_b

    add-int/lit8 v14, v14, 0x1

    sub-float v6, v6, v21

    :cond_a
    :goto_2
    move v10, v6

    move v8, v15

    goto :goto_3

    :cond_b
    cmpg-double v7, v7, v16

    if-gez v7, :cond_a

    add-int/lit8 v14, v14, -0x1

    add-float v6, v6, v21

    goto :goto_2

    :goto_3
    iget v6, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v7, p1

    invoke-virtual {v0, v7, v13, v6}, Lcom/motorola/camera/AppFeatures;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v6

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v6, v14}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual {v0, v11, v6, v14, v12}, Lcom/motorola/camera/AppFeatures;->updateMeasureCache(IIILandroid/view/View;)V

    invoke-virtual {v1, v12, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    move v6, v15

    move/from16 v14, v16

    goto :goto_4

    :cond_c
    move/from16 v7, p1

    move v15, v8

    move v8, v15

    :goto_4
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v11, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v11

    iget v11, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v11

    invoke-virtual {v1, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v6

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v9, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v11, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v11

    iget v11, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v11

    add-int/2addr v14, v9

    iput v14, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v15, v8

    move v8, v5

    move/from16 v5, p2

    goto/16 :goto_9

    :goto_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v8, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v8, [J

    if-eqz v8, :cond_d

    aget-wide v6, v8, v11

    long-to-int v6, v6

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v8, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v8, [J

    if-eqz v8, :cond_e

    aget-wide v7, v8, v11

    shr-long v7, v7, v20

    long-to-int v7, v7

    :cond_e
    iget-object v8, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v8, [Z

    aget-boolean v8, v8, v11

    if-nez v8, :cond_13

    move-object v8, v13

    check-cast v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v14, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    cmpl-float v20, v14, v22

    if-lez v20, :cond_13

    int-to-float v6, v6

    mul-float v7, v25, v14

    sub-float/2addr v6, v7

    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v5, v7, :cond_f

    add-float/2addr v6, v10

    move/from16 v10, v22

    :cond_f
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    if-ge v7, v8, :cond_10

    iget-object v6, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v6, [Z

    aput-boolean p6, v6, v11

    iget v6, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    sub-float/2addr v6, v14

    iput v6, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move/from16 v15, p6

    move v7, v8

    move v8, v5

    goto :goto_7

    :cond_10
    int-to-float v8, v7

    sub-float/2addr v6, v8

    add-float/2addr v6, v10

    move v8, v5

    float-to-double v4, v6

    cmpl-double v10, v4, v18

    if-lez v10, :cond_12

    add-int/lit8 v7, v7, 0x1

    sub-float v6, v6, v21

    :cond_11
    :goto_6
    move v10, v6

    goto :goto_7

    :cond_12
    cmpg-double v4, v4, v16

    if-gez v4, :cond_11

    add-int/lit8 v7, v7, -0x1

    add-float v6, v6, v21

    goto :goto_6

    :goto_7
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v5, p2

    invoke-virtual {v0, v5, v13, v4}, Lcom/motorola/camera/AppFeatures;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v12, v6, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v0, v11, v6, v4, v12}, Lcom/motorola/camera/AppFeatures;->updateMeasureCache(IIILandroid/view/View;)V

    invoke-virtual {v1, v12, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    move v6, v7

    move v7, v14

    goto :goto_8

    :cond_13
    move v8, v5

    move/from16 v5, p2

    :goto_8
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v4

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    invoke-virtual {v1, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v7

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    add-int/2addr v6, v7

    iput v6, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v6, v4

    :goto_9
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v9, v6

    :goto_a
    add-int/lit8 v4, v8, 0x1

    move v5, v4

    move v8, v15

    move/from16 v6, v22

    move/from16 v7, v25

    move/from16 v4, p4

    goto/16 :goto_0

    :cond_14
    move/from16 v5, p2

    move v15, v8

    if-eqz v15, :cond_15

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eq v2, v1, :cond_15

    const/4 v6, 0x1

    move/from16 v1, p1

    move/from16 v4, p4

    move v2, v5

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/AppFeatures;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_15
    :goto_b
    return-void
.end method

.method public stretchViewHorizontally(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v0, [J

    if-eqz v0, :cond_0

    aget-wide v2, v0, p3

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p3, p2, v0, p1}, Lcom/motorola/camera/AppFeatures;->updateMeasureCache(IIILandroid/view/View;)V

    invoke-virtual {v1, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    return-void
.end method

.method public stretchViewVertically(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast v0, [J

    if-eqz v0, :cond_0

    aget-wide v2, v0, p3

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/motorola/camera/AppFeatures;->updateMeasureCache(IIILandroid/view/View;)V

    invoke-virtual {v1, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    return-void
.end method

.method public stretchViews(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget-object v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    const-string v5, "Invalid flex direction: "

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ne v4, v8, :cond_a

    iget-object v4, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, [I

    if-eqz v4, :cond_1

    aget v1, v4, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    :goto_1
    if-ge v1, v11, :cond_f

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexLine;

    iget v13, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_9

    iget v15, v12, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v15, v14

    iget-object v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    if-lt v14, v10, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v2, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexItem;

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    if-eq v6, v8, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_7

    if-eq v3, v9, :cond_7

    const/4 v6, 0x2

    if-eq v3, v6, :cond_6

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    iget v6, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v0, v10, v6, v15}, Lcom/motorola/camera/AppFeatures;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_4

    :cond_7
    iget v6, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v0, v10, v6, v15}, Lcom/motorola/camera/AppFeatures;->stretchViewVertically(Landroid/view/View;II)V

    :cond_8
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    iget-object v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    iget-object v6, v4, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v3, :cond_e

    if-eq v3, v9, :cond_e

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v3, v10, :cond_d

    if-ne v3, v11, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_6
    iget v12, v4, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v8, v12, v7}, Lcom/motorola/camera/AppFeatures;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_5

    :cond_e
    const/4 v10, 0x2

    const/4 v11, 0x3

    iget v12, v4, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v8, v12, v7}, Lcom/motorola/camera/AppFeatures;->stretchViewVertically(Landroid/view/View;II)V

    goto :goto_5

    :cond_f
    :goto_7
    return-void
.end method

.method public supportsRegion(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 3

    const-string/jumbo v0, "region"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    xor-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    const-string p0, "AppFeatures"

    const-string/jumbo p1, "region not formatted correctly"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/AppFeatures;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSupportedFeatureSet = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mValueFeatureMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public updateMeasureCache(IIILandroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v0, [J

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_0

    int-to-long v4, p3

    shl-long/2addr v4, v3

    int-to-long p2, p2

    and-long/2addr p2, v1

    or-long/2addr p2, v4

    aput-wide p2, v0, p1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p0, [J

    if-eqz p0, :cond_1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-long p3, p3

    shl-long/2addr p3, v3

    int-to-long v3, p2

    and-long v0, v3, v1

    or-long p2, p3, v0

    aput-wide p2, p0, p1

    :cond_1
    return-void
.end method

.method public visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V

    return-void
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;

    move-result-object p0

    return-object p0
.end method

.method public visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;

    move-result-object p0

    return-object p0
.end method

.method public visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V

    return-void
.end method

.method public visitEnd()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visitEnd()V

    iget-object v0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    iget-object v1, p0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/AnnotationValue;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    invoke-direct {v2, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/AnnotationValue;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;)V

    iget-object p0, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    return-void
.end method
