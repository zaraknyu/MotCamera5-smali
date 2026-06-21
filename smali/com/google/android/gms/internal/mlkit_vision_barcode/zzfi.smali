.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/config/EncoderConfig;


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzff;


# instance fields
.field public zzc:Ljava/lang/Object;

.field public zzd:Ljava/io/Serializable;

.field public zze:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzff;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzff;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzff;

    return-void
.end method


# virtual methods
.method public bridge synthetic registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zzc:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zzd:Ljava/io/Serializable;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
