.class public final Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHANGE_CALLBACK_TRACE:Ljava/lang/String;


# instance fields
.field public final mainThreadHandler:Landroid/os/Handler;

.field public final visibilityChangeListener:Ljava/lang/ref/WeakReference;

.field public final visibilityNotifierListeners:Ljava/util/ArrayList;

.field public final visibilityNotifierTypes:Ljava/util/List;

.field public final visibleIndexes:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MultiVisibilitySubject"

    const-string v1, ".onVisibilityChange()"

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->CHANGE_CALLBACK_TRACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/ref/WeakReference;)V
    .locals 6

    const-string/jumbo v0, "visibilityNotifierTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierTypes:Ljava/util/List;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityChangeListener:Ljava/lang/ref/WeakReference;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->mainThreadHandler:Landroid/os/Handler;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/LinkedHashSet;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_0

    check-cast v1, Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;II)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v5}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;II)V

    const-string/jumbo v0, "type"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final notifyVisibilityChange(Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityChangeListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->CHANGE_CALLBACK_TRACE:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_1
    return-void

    :cond_1
    const-string p0, "MultiVisibilitySubject"

    const-string p1, "Error while calling visibility listener"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerListeners(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierListeners:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierTypes:Ljava/util/List;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/Notifier$Listener;

    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_0

    :cond_0
    return-void
.end method
