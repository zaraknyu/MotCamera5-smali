.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;
.super Lcom/motorola/camera/ui/compose/component/ComposeComponent;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public actionLayout:Landroid/widget/LinearLayout;

.field public actionLayoutGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public clickData:Lcom/motorola/camera/CameraData;

.field public clickView:Landroid/view/View;

.field public composeTipsLayout:Landroid/widget/LinearLayout;

.field public final controlBarGuideline$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public deleteButton:Landroid/widget/ImageButton;

.field public descriptionTextView:Landroid/widget/TextView;

.field public displayFlashColor:I

.field public final flags:Lcom/motorola/camera/utility/Flags;

.field public isFirstDraw:Z

.field public final isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public isViewEnable:Z

.field public final itemAddListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

.field public final itemIdList:Ljava/util/List;

.field public final onScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

.field public recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public shareButton:Landroid/widget/ImageButton;

.field public splashView:Landroid/widget/ImageView;

.field public titleTextView:Landroid/widget/TextView;

.field public final viewModel:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/EventListener;)V

    iget-object p1, p2, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object v0, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getControlBarGuideline()F

    move-result v0

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v1, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->controlBarGuideline$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object p1, p1, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    const-string v0, "getLayoutManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->isFirstDraw:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;-><init>(Lcom/motorola/camera/ui/UIManager;Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->displayFlashColor:I

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Flag;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->flags:Lcom/motorola/camera/utility/Flags;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->itemIdList:Ljava/util/List;

    new-instance p1, Landroidx/recyclerview/widget/FastScroller$2;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    new-instance p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->itemAddListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final AnimatedGallery(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 6

    const v0, -0xb143768

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_2
    :goto_1
    const v0, 0x6e3c21fe

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0072

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, -0x615d173a

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4

    if-ne v4, v1, :cond_5

    :cond_4
    new-instance v4, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    invoke-direct {v4, v3, p0, v0}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    const v3, 0x4c5de2

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_6

    if-ne v5, v1, :cond_7

    :cond_6
    new-instance v5, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v5, p0, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v1, 0x30

    invoke-static {v4, v0, v5, p2, v1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public final Draw(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 8

    const v0, 0x21472007

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v2, v0, 0x3

    if-ne v2, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_2
    :goto_1
    const v1, 0x7f0b000b

    invoke-static {v1, p2}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v1

    const v2, 0x6e3c21fe

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v2, v3, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Landroidx/compose/animation/core/Animatable;

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;

    invoke-virtual {v5}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->isVisible()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const v6, 0x4c5de2

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_4

    if-ne v7, v3, :cond_5

    :cond_4
    new-instance v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda5;

    const/4 v6, 0x0

    invoke-direct {v7, p0, v6}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;I)V

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v5, v7, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, -0x6815fd56

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_6

    if-ne v7, v3, :cond_7

    :cond_6
    new-instance v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Draw$2$1;

    const/4 v3, 0x0

    invoke-direct {v7, p0, v2, v1, v3}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Draw$2$1;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;Landroidx/compose/animation/core/Animatable;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p2, v5, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Black:J

    sget-object v5, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v1, v2, v3, v5}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget v3, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p2, v1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_8

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v2, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v4, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v4, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_9

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    invoke-static {v3, p2, v3, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_a
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->AnimatedGallery(ILandroidx/compose/runtime/ComposerImpl;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_b

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public final getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryViewModel;

    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeData;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$onChanged$1$1;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_8

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "COMPOSE_GALLERY_ENABLE_TOUCH"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "COMPOSE_GALLERY_TRIGGER_TYPE"

    const-class v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.controls_fold.gallery.GalleryComposeComponent.TriggerType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    const-string v2, "COMPOSE_GALLERY_PHOTO_BOTH_CAPTURING"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->flags:Lcom/motorola/camera/utility/Flags;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    sget-object v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Flag;->CAPTURING:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Flag;

    invoke-virtual {v4, p1, v2}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    goto :goto_0

    :cond_1
    const-string v2, "COMPOSE_GALLERY_VIDEO_RECORDING"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    sget-object v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Flag;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Flag;

    invoke-virtual {v4, p1, v2}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->updateViewState(ZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;)V

    return-void

    :cond_3
    const-string v0, "COMPOSE_GALLERY_DISPLAY_FLASH_UI_CHANGED"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->updateBackgroundColor(Z)V

    return-void

    :cond_4
    const-string v0, "COMPOSE_GALLERY_LAUNCH"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_fold.gallery.GalleryComposeAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    iget-object p1, p1, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->clickData:Lcom/motorola/camera/CameraData;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->clickView:Landroid/view/View;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->instance$delegate:Ljava/lang/Object;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->clickData:Lcom/motorola/camera/CameraData;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->clickView:Landroid/view/View;

    new-instance v6, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 p1, 0x19

    invoke-direct {v6, p1}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v5, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/LaunchGalleryHelper;->launchGallery(Lcom/motorola/camera/CameraData;Landroid/view/View;ZLcom/motorola/camera/EventListener;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->clickView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Try to launch gallery with invalid data clickData:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " clickView:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    return-void
.end method

.method public final pause()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->COMPOSE_PAUSE:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->updateViewState(ZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->rotate(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->isViewEnable:Z

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->ROTATE_ANIMATION:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->updateViewState(ZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->flags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Flag;->ROTATE_ANIMATION:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Flag;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v3

    iget-object p1, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b0020

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->composeTipsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->shareButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->deleteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    :cond_9
    move v4, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    if-eqz v0, :cond_c

    new-instance v6, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v3, v4}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;FI)V

    iput v3, v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->uiRotation:F

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_a

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    :cond_a
    move-object v2, v1

    if-eqz v2, :cond_b

    const/4 v5, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->rotateView(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;FIZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;)V

    return-void

    :cond_b
    invoke-virtual {v6}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->rotateAnimationEndInvoke()V

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->rotateAnimationEndInvoke()V

    return-void
.end method

.method public final rotateAnimationEndInvoke()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->onScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->flags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Flag;->ROTATE_ANIMATION:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->ROTATE_ANIMATION:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->updateViewState(ZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;)V

    return-void
.end method

.method public final setItemAnimator(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/FadeScaleAnimator;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->itemAddListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/FadeScaleAnimator;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public final switchPagerOrTips()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_fold.gallery.GalleryComposeAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->composeTipsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->actionLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->composeTipsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->actionLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public final updateBackgroundColor(Z)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->displayFlashColor:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashColor:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, ";"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, ":"

    invoke-static {p1, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v5, 0x1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v2

    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    :cond_3
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v4, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v5

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_3
    iput p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->displayFlashColor:I

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_6

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->displayFlashColor:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->titleTextView:Landroid/widget/TextView;

    const v1, 0x7f06040b

    if-eqz p1, :cond_7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->descriptionTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_9

    const v1, 0x7f060483

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->titleTextView:Landroid/widget/TextView;

    const v1, 0x7f0604a2

    if-eqz p1, :cond_a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->descriptionTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    return-void
.end method

.method public final declared-synchronized updateViewState(ZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->isViewEnable:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->flags:Lcom/motorola/camera/utility/Flags;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->isViewEnable:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
