.class public final Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public executorProvider:Ljavax/inject/Provider;

.field public metadataBackendRegistryProvider:Ljavax/inject/Provider;

.field public sQLiteEventStoreProvider:Ljavax/inject/Provider;

.field public setApplicationContextProvider:Lcom/google/android/gms/tasks/zzs;

.field public transportRuntimeProvider:Ljavax/inject/Provider;


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->close()V

    return-void
.end method
