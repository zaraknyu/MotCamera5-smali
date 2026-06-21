.class public final Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public static dispatchPostEvents(Ljava/util/List;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method
