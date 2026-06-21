.class public final Lcom/motorola/camera/mcf/Mcf$CapKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mTag:I

.field public final mType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mType:Ljava/lang/Class;

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    iget p1, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    return p0
.end method
