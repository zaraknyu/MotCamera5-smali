.class public final Lcom/motorola/camera/storage/MediaVolume;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0006\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/motorola/camera/storage/MediaVolume;",
        "Landroid/os/Parcelable;",
        "isPrimary",
        "",
        "storageVolumeUuid",
        "",
        "mediaStoreVolumeName",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;)V",
        "()Z",
        "getStorageVolumeUuid",
        "()Ljava/lang/String;",
        "getMediaStoreVolumeName",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/storage/MediaVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/motorola/camera/storage/MediaVolume$Companion;

.field public static final PRIMARY:Lcom/motorola/camera/storage/MediaVolume;


# instance fields
.field private final isPrimary:Z

.field private final mediaStoreVolumeName:Ljava/lang/String;

.field private final storageVolumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/storage/MediaVolume$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/MediaVolume;->Companion:Lcom/motorola/camera/storage/MediaVolume$Companion;

    new-instance v0, Lcom/motorola/camera/storage/MediaVolume$Creator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/storage/MediaVolume$Creator;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/storage/MediaVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/motorola/camera/storage/MediaVolume;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "external_primary"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/storage/MediaVolume;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/storage/MediaVolume;->PRIMARY:Lcom/motorola/camera/storage/MediaVolume;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "storageVolumeUuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaStoreVolumeName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/storage/MediaVolume;->isPrimary:Z

    iput-object p2, p0, Lcom/motorola/camera/storage/MediaVolume;->storageVolumeUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/storage/MediaVolume;->mediaStoreVolumeName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/storage/MediaVolume;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/motorola/camera/storage/MediaVolume;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/storage/MediaVolume;->isPrimary:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/storage/MediaVolume;->storageVolumeUuid:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/motorola/camera/storage/MediaVolume;->mediaStoreVolumeName:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/storage/MediaVolume;->copy(ZLjava/lang/String;Ljava/lang/String;)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/storage/MediaVolume;->isPrimary:Z

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolume;->storageVolumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolume;->mediaStoreVolumeName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;)Lcom/motorola/camera/storage/MediaVolume;
    .locals 0

    const-string/jumbo p0, "storageVolumeUuid"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaStoreVolumeName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/storage/MediaVolume;

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/storage/MediaVolume;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/storage/MediaVolume;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/storage/MediaVolume;

    iget-boolean v1, p0, Lcom/motorola/camera/storage/MediaVolume;->isPrimary:Z

    iget-boolean v3, p1, Lcom/motorola/camera/storage/MediaVolume;->isPrimary:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaVolume;->storageVolumeUuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/storage/MediaVolume;->storageVolumeUuid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolume;->mediaStoreVolumeName:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/storage/MediaVolume;->mediaStoreVolumeName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMediaStoreVolumeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolume;->mediaStoreVolumeName:Ljava/lang/String;

    return-object p0
.end method

.method public final getStorageVolumeUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolume;->storageVolumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/storage/MediaVolume;->isPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/storage/MediaVolume;->storageVolumeUuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolume;->mediaStoreVolumeName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isPrimary()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/storage/MediaVolume;->isPrimary:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/storage/MediaVolume;->isPrimary:Z

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaVolume;->storageVolumeUuid:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolume;->mediaStoreVolumeName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaVolume(isPrimary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", storageVolumeUuid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaStoreVolumeName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/motorola/camera/storage/MediaVolume;->isPrimary:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/motorola/camera/storage/MediaVolume;->storageVolumeUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolume;->mediaStoreVolumeName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
