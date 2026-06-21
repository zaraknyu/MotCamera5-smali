.class public final synthetic Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic f$0:Landroidx/activity/result/ActivityResultRegistry;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/activity/result/ActivityResultCallback;

.field public final synthetic f$3:Landroidx/activity/result/contract/ActivityResultContract;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticLambda1;->f$0:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticLambda1;->f$2:Landroidx/activity/result/ActivityResultCallback;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticLambda1;->f$3:Landroidx/activity/result/contract/ActivityResultContract;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticLambda1;->f$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v0, p1, Landroidx/activity/result/ActivityResultRegistry;->keyToCallback:Ljava/util/LinkedHashMap;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    if-ne v1, p2, :cond_1

    iget-object p2, p1, Landroidx/activity/result/ActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->parsedPendingResults:Ljava/util/LinkedHashMap;

    new-instance v1, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticLambda1;->f$3:Landroidx/activity/result/contract/ActivityResultContract;

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticLambda1;->f$2:Landroidx/activity/result/ActivityResultCallback;

    invoke-direct {v1, v3, p0}, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;-><init>(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    :cond_0
    const-class p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/ActivityResult;

    if-eqz p1, :cond_3

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget p2, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    invoke-virtual {v3, p1, p2}, Landroidx/activity/result/contract/ActivityResultContract;->parseResult(Landroid/content/Intent;I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p0, p2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p0, p2, :cond_3

    invoke-virtual {p1, v2}, Landroidx/activity/result/ActivityResultRegistry;->unregister$activity_release(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
