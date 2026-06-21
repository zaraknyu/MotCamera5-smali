.class public final Lcom/motorola/camera/storage/MediaFile$Memento;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\r\u0008\u0087\u0008\u0018\u0000 /2\u00020\u0001:\u0001/B7\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ@\u0010\u001d\u001a\u00020\u001c2\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010 \u001a\u00020\u001fH\u00d6\u0001\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\"\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0013J\u001a\u0010%\u001a\u00020\u00042\u0008\u0010$\u001a\u0004\u0018\u00010#H\u00d6\u0003\u00a2\u0006\u0004\u0008%\u0010&R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\'\u001a\u0004\u0008(\u0010\u0015R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010)\u001a\u0004\u0008*\u0010\u0017R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010+\u001a\u0004\u0008,\u0010\u0019R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010-\u001a\u0004\u0008.\u0010\u001b\u00a8\u00060"
    }
    d2 = {
        "com/motorola/camera/storage/MediaFile$Memento",
        "Landroid/os/Parcelable;",
        "",
        "backend",
        "",
        "finished",
        "Landroid/net/Uri;",
        "uri",
        "Lcom/motorola/camera/storage/MediaFilePath;",
        "path",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)V",
        "Landroid/os/Parcel;",
        "dest",
        "flags",
        "",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "()Ljava/lang/Integer;",
        "component2",
        "()Ljava/lang/Boolean;",
        "component3",
        "()Landroid/net/Uri;",
        "component4",
        "()Lcom/motorola/camera/storage/MediaFilePath;",
        "Lcom/motorola/camera/storage/MediaFile$Memento;",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/MediaFile$Memento;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/Integer;",
        "getBackend",
        "Ljava/lang/Boolean;",
        "getFinished",
        "Landroid/net/Uri;",
        "getUri",
        "Lcom/motorola/camera/storage/MediaFilePath;",
        "getPath",
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

.field public static final BACKEND_EXTERNAL_URI:I = 0x1

.field public static final BACKEND_MEDIA_STORE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/storage/MediaFile$Memento;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/motorola/camera/storage/MediaFile$Memento$Companion;


# instance fields
.field private final backend:Ljava/lang/Integer;

.field private final finished:Ljava/lang/Boolean;

.field private final path:Lcom/motorola/camera/storage/MediaFilePath;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/storage/MediaFile$Memento$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/MediaFile$Memento;->Companion:Lcom/motorola/camera/storage/MediaFile$Memento$Companion;

    new-instance v0, Lcom/motorola/camera/storage/MediaVolume$Creator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/storage/MediaVolume$Creator;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/storage/MediaFile$Memento;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->backend:Ljava/lang/Integer;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->finished:Ljava/lang/Boolean;

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->uri:Landroid/net/Uri;

    .line 6
    iput-object p4, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->path:Lcom/motorola/camera/storage/MediaFilePath;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/storage/MediaFile$Memento;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;ILjava/lang/Object;)Lcom/motorola/camera/storage/MediaFile$Memento;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->backend:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->finished:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->uri:Landroid/net/Uri;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->path:Lcom/motorola/camera/storage/MediaFilePath;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/camera/storage/MediaFile$Memento;->copy(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/MediaFile$Memento;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->backend:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->finished:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component3()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public final component4()Lcom/motorola/camera/storage/MediaFilePath;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->path:Lcom/motorola/camera/storage/MediaFilePath;

    return-object p0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/MediaFile$Memento;
    .locals 0

    new-instance p0, Lcom/motorola/camera/storage/MediaFile$Memento;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)V

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
    instance-of v1, p1, Lcom/motorola/camera/storage/MediaFile$Memento;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/storage/MediaFile$Memento;

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->backend:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/motorola/camera/storage/MediaFile$Memento;->backend:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->finished:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/motorola/camera/storage/MediaFile$Memento;->finished:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/motorola/camera/storage/MediaFile$Memento;->uri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->path:Lcom/motorola/camera/storage/MediaFilePath;

    iget-object p1, p1, Lcom/motorola/camera/storage/MediaFile$Memento;->path:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBackend()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->backend:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getFinished()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->finished:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getPath()Lcom/motorola/camera/storage/MediaFilePath;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->path:Lcom/motorola/camera/storage/MediaFilePath;

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->backend:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->finished:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->uri:Landroid/net/Uri;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->path:Lcom/motorola/camera/storage/MediaFilePath;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFilePath;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->backend:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->finished:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->path:Lcom/motorola/camera/storage/MediaFilePath;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Memento(backend="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", finished="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uri="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", path="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->backend:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->finished:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFile$Memento;->path:Lcom/motorola/camera/storage/MediaFilePath;

    if-nez p0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/storage/MediaFilePath;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
