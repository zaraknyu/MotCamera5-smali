.class public final enum Lcom/google/android/play/core/splitinstall/zzo;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic zzc:[Lcom/google/android/play/core/splitinstall/zzo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/play/core/splitinstall/zzo;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/google/android/play/core/splitinstall/zzo;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/splitinstall/zzo;->zzc:[Lcom/google/android/play/core/splitinstall/zzo;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static values()[Lcom/google/android/play/core/splitinstall/zzo;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/splitinstall/zzo;->zzc:[Lcom/google/android/play/core/splitinstall/zzo;

    invoke-virtual {v0}, [Lcom/google/android/play/core/splitinstall/zzo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/play/core/splitinstall/zzo;

    return-object v0
.end method
