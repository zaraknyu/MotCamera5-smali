.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

.field public static final synthetic zza$1:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;->zza$1:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Couldn\'t find encoder for type "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
