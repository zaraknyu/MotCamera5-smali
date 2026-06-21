.class public final Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCallbackList:Ljava/util/ArrayList;

.field public onBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    if-nez p2, :cond_1

    new-instance p2, Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p2, v1, p0}, Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/util/AbstractCollection;)Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Landroidx/appcompat/widget/Toolbar$Api33Impl$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
