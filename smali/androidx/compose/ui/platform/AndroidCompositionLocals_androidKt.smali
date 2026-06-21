.class public final Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\" \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00008FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\t\u00b2\u0006\u000e\u0010\u0008\u001a\u00020\u00078\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "getLocalLifecycleOwner",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "getLocalLifecycleOwner$annotations",
        "()V",
        "LocalLifecycleOwner",
        "Landroid/content/res/Configuration;",
        "configuration",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalImageVectorCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalResourceIdCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalSavedStateRegistryOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;->INSTANCE$1:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;->INSTANCE$2:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;->INSTANCE$3:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalImageVectorCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;->INSTANCE$4:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResourceIdCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;->INSTANCE$5:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalSavedStateRegistryOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;->INSTANCE$6:Landroidx/compose/ui/platform/CompositionLocalsKt$LocalDensity$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final ProvideAndroidCompositionLocals(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const v4, 0x5342453c

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v4, v6

    and-int/lit8 v6, v4, 0x13

    const/16 v7, 0x12

    const/4 v9, 0x1

    if-eq v6, v7, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    and-int/2addr v4, v9

    invoke-virtual {v2, v4, v6}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v6, v7, :cond_3

    new-instance v6, Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {v6}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v6, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x3

    if-ne v10, v7, :cond_4

    new-instance v10, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;

    invoke-direct {v10, v6, v11}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v10}, Landroidx/compose/ui/platform/AndroidComposeView;->setConfigurationChangeObserver(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v7, :cond_5

    new-instance v10, Landroidx/compose/ui/platform/AndroidUriHandler;

    invoke-direct {v10, v4}, Landroidx/compose/ui/platform/AndroidUriHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v10, Landroidx/compose/ui/platform/AndroidUriHandler;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    move-result-object v12

    if-eqz v12, :cond_19

    iget-object v13, v12, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v7, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type android.view.View"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroid/view/View;

    const v15, 0x7f0a00fb

    invoke-virtual {v14, v15}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v8, v15, Ljava/lang/String;

    const/16 v16, 0x0

    if-eqz v8, :cond_6

    check-cast v15, Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object/from16 v15, v16

    :goto_3
    if-nez v15, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    :cond_7
    const-string v8, "SaveableStateRegistry:"

    invoke-static {v8, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v13}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    if-eqz v15, :cond_9

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v15}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v16

    check-cast v16, Ljava/lang/Iterable;

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v19, v6

    const-string v6, "null cannot be cast to non-null type java.util.ArrayList<kotlin.Any?>{ kotlin.collections.TypeAliasesKt.ArrayList<kotlin.Any?> }"

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v19

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    move-object/from16 v19, v6

    goto :goto_6

    :cond_9
    move-object/from16 v11, v16

    goto :goto_5

    :goto_6
    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;->INSTANCE$3:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    sget-object v6, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->LocalSaveableStateRegistry:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v6, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;

    invoke-direct {v6, v11, v5}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;-><init>(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    :try_start_0
    new-instance v5, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v6}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v8, v5}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_7

    :catch_0
    const/4 v5, 0x0

    :goto_7
    new-instance v9, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    new-instance v11, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;

    invoke-direct {v11, v5, v14, v8}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;-><init>(ZLandroidx/savedstate/SavedStateRegistry;Ljava/lang/String;)V

    invoke-direct {v9, v6, v11}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v14, v9

    goto :goto_8

    :cond_a
    move-object/from16 v19, v6

    :goto_8
    check-cast v14, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_b

    if-ne v6, v7, :cond_c

    :cond_b
    new-instance v6, Lcom/tinder/StateMachine$Matcher$predicates$1;

    const/4 v5, 0x2

    invoke-direct {v6, v5, v14}, Lcom/tinder/StateMachine$Matcher$predicates$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v6, Lkotlin/jvm/functions/Function1;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5, v6, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_e

    const-class v5, Landroid/os/Vibrator;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    const/4 v6, 0x7

    const/4 v8, 0x2

    const/4 v9, 0x1

    filled-new-array {v9, v6, v8}, [I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Landroidx/compose/ui/platform/DefaultHapticFeedback;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/compose/ui/platform/DefaultHapticFeedback;-><init>(Landroid/view/View;)V

    goto :goto_9

    :cond_d
    new-instance v5, Landroidx/compose/ui/platform/NoHapticFeedback;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    :goto_9
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    check-cast v5, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v7, :cond_f

    new-instance v8, Landroidx/compose/ui/res/ImageVectorCache;

    invoke-direct {v8}, Landroidx/compose/ui/res/ImageVectorCache;-><init>()V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v8, Landroidx/compose/ui/res/ImageVectorCache;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_11

    new-instance v9, Landroid/content/res/Configuration;

    invoke-direct {v9}, Landroid/content/res/Configuration;-><init>()V

    if-eqz v6, :cond_10

    invoke-virtual {v9, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_10
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    check-cast v9, Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_12

    new-instance v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1;

    invoke-direct {v6, v9, v8}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1;-><init>(Landroid/content/res/Configuration;Landroidx/compose/ui/res/ImageVectorCache;)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_13

    if-ne v11, v7, :cond_14

    :cond_13
    new-instance v11, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;

    const/4 v9, 0x1

    invoke-direct {v11, v9, v4, v6}, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v11, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_15

    new-instance v6, Landroidx/compose/ui/res/ResourceIdCache;

    invoke-direct {v6}, Landroidx/compose/ui/res/ResourceIdCache;-><init>()V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v6, Landroidx/compose/ui/res/ResourceIdCache;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_16

    new-instance v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$callbacks$1$1;

    invoke-direct {v9, v6}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$callbacks$1$1;-><init>(Landroidx/compose/ui/res/ResourceIdCache;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    check-cast v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$callbacks$1$1;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v11, :cond_17

    if-ne v15, v7, :cond_18

    :cond_17
    new-instance v15, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;

    const/4 v7, 0x2

    invoke-direct {v15, v7, v4, v9}, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v15, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getScrollCaptureInProgress$ui_release()Z

    move-result v11

    or-int/2addr v9, v11

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/Configuration;

    sget-object v15, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v17

    sget-object v11, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v18

    sget-object v4, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    iget-object v11, v12, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v19

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalSavedStateRegistryOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v20

    sget-object v4, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->LocalSaveableStateRegistry:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v21

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v22

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalImageVectorCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v23

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResourceIdCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v24

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v25

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v26

    filled-new-array/range {v17 .. v26}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    new-instance v5, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v10, v1, v6}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v6, 0x57b729fc

    invoke-static {v6, v5, v2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/16 v6, 0x38

    invoke-static {v4, v5, v2, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_a

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called when the ViewTreeOwnersAvailability is not yet in Available state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_1b

    new-instance v4, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/16 v5, 0xd

    invoke-direct {v4, v3, v5, v0, v1}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method

.method public static final access$noLocalProvidedFor(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CompositionLocal "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not present"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal;"
        }
    .end annotation

    sget-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
