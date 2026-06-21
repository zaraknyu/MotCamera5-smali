.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwf;


# instance fields
.field public final zza:Lcom/google/firebase/components/Lazy;

.field public final zzb:Lcom/google/firebase/components/Lazy;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwd;

    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/EncodedDestination;)Landroidx/core/view/MenuHostHelper;

    move-result-object p1

    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v1, "json"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwx;->zza:Lcom/google/firebase/components/Lazy;

    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwx;->zzb:Lcom/google/firebase/components/Lazy;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/common/base/Splitter;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwd;

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwd;->zzc:I

    sget-object v1, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    sget-object v2, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwx;->zza:Lcom/google/firebase/components/Lazy;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportImpl;

    iget v3, p1, Lcom/google/common/base/Splitter;->limit:I

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/common/base/Splitter;->zze(I)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/datatransport/AutoValue_Event;

    invoke-direct {v0, p1, v2}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/base/Splitter;->zze(I)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/datatransport/AutoValue_Event;

    invoke-direct {v0, p1, v1}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/TransportImpl;->send(Lcom/google/android/datatransport/AutoValue_Event;)V

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwx;->zzb:Lcom/google/firebase/components/Lazy;

    invoke-virtual {p0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportImpl;

    iget v3, p1, Lcom/google/common/base/Splitter;->limit:I

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0}, Lcom/google/common/base/Splitter;->zze(I)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/datatransport/AutoValue_Event;

    invoke-direct {v0, p1, v2}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/common/base/Splitter;->zze(I)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/datatransport/AutoValue_Event;

    invoke-direct {v0, p1, v1}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/TransportImpl;->send(Lcom/google/android/datatransport/AutoValue_Event;)V

    return-void
.end method
