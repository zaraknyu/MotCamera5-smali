.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v0, "."

    const-string v1, "Could not instantiate "

    const-string v2, " is not an instance of com.google.firebase.components.ComponentRegistrar"

    const-string v3, "Class "

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/google/firebase/components/ComponentRegistrar;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/ComponentRegistrar;

    move-object v4, v2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_3

    :cond_0
    new-instance v5, Lcom/google/firebase/components/InvalidRegistrarException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/google/firebase/components/InvalidRegistrarException;

    invoke-static {v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_1
    new-instance v2, Lcom/google/firebase/components/InvalidRegistrarException;

    invoke-static {v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_2
    new-instance v3, Lcom/google/firebase/components/InvalidRegistrarException;

    invoke-static {v1, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_3
    new-instance v3, Lcom/google/firebase/components/InvalidRegistrarException;

    invoke-static {v1, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not an found."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ComponentDiscovery"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v4

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/MenuHostHelper;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string/jumbo v1, "proto"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza$2:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/MenuHostHelper;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/TransportImpl;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string/jumbo v1, "proto"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;-><init>(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/MenuHostHelper;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/TransportImpl;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v1, "json"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxb;-><init>(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/MenuHostHelper;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/TransportImpl;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/MenuHostHelper;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v1, "json"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->zza$3:Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/MenuHostHelper;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/TransportImpl;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
