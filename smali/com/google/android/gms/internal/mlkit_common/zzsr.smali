.class public final Lcom/google/android/gms/internal/mlkit_common/zzsr;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsr;->$r8$classId:I

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsr;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzma;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzma;)V

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v2, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {v0, v2}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;)V

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwd;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwi;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwd;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwd;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {v0, v3}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwi;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzru;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object p1

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/EncodedDestination;)Landroidx/core/view/MenuHostHelper;

    sget-object v0, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    new-instance v3, Lcom/google/android/datatransport/Encoding;

    const-string v4, "json"

    invoke-direct {v3, v4}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {p1, v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzsh;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
