.class public final Le/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/g;

.field public final b:Le/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Le/d;->a:Le/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Le/g;->a:Le/g;

    iput-object v1, p0, Le/j;->a:Le/g;

    iput-object v0, p0, Le/j;->b:Le/d;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Le/j;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Le/j;

    iget-object v0, p0, Le/j;->a:Le/g;

    iget-object v1, p1, Le/j;->a:Le/g;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Le/j;->b:Le/d;

    iget-object p1, p1, Le/j;->b:Le/d;

    if-eq p0, p1, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Le/j;->a:Le/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x3d5f276f

    const/4 v1, 0x0

    invoke-static {v1, v0}, La/l;->a(II)I

    move-result v0

    iget-object p0, p0, Le/j;->b:Le/d;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompletedCaptureUIState(uiState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le/j;->a:Le/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position=null, cameraPreview=null, sensorOffset=0, completionReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le/j;->b:Le/d;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
