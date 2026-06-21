.class public final Lcom/motorola/camera/mcf/McfCallbackBandingDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final result:Lcom/google/android/gms/dynamite/zzo;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/dynamite/zzo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/zzo;-><init>(IB)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/dynamite/zzo;->zza:I

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfCallbackBandingDetect;->result:Lcom/google/android/gms/dynamite/zzo;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{McfCallbackBandingDetect:{banding-detected"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallbackBandingDetect;->result:Lcom/google/android/gms/dynamite/zzo;

    iget p0, p0, Lcom/google/android/gms/dynamite/zzo;->zza:I

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
