.class public final Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/saveable/SaveableStateHolder;


# static fields
.field public static final Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;


# instance fields
.field public final canBeSaved:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

.field public parentSaveableStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field public final registries:Landroidx/collection/MutableScatterMap;

.field public final savedStates:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;->INSTANCE$1:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;

    sget-object v1, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;->INSTANCE$1:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;

    sget-object v2, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->savedStates:Ljava/util/Map;

    sget-object p1, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->registries:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v0, 0x14

    invoke-direct {p1, v0, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->canBeSaved:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    return-void
.end method


# virtual methods
.method public final SaveableStateProvider(Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 4

    const v0, -0x47703d6d

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReusableGroup(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->canBeSaved:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->savedStates:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    sget-object v3, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->LocalSaveableStateRegistry:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v3, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;

    invoke-direct {v3, v2, v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;-><init>(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Type of the key "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported. On Android you can only use types which can be stored inside the Bundle."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    sget-object v2, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->LocalSaveableStateRegistry:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    and-int/lit8 p4, p4, 0x70

    const/16 v3, 0x8

    or-int/2addr p4, v3

    invoke-static {v2, p2, p3, p4}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p2, p4

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p2, p4

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    if-nez p2, :cond_2

    if-ne p4, v1, :cond_3

    :cond_2
    new-instance p4, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    const/16 p2, 0xb

    invoke-direct {p4, p0, p1, v0, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p3, p4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast p4, Lkotlin/jvm/functions/Function1;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0, p4, p3}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    iget-boolean p0, p3, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    iget-object p0, p3, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    iget p2, p3, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ne p0, p2, :cond_4

    const/4 p0, -0x1

    iput p0, p3, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    iput-boolean p1, p3, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    :cond_4
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method
