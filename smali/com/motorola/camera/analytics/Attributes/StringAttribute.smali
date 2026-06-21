.class public final Lcom/motorola/camera/analytics/Attributes/StringAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mDefault:Ljava/lang/String;

.field public mMandatory:Z

.field public mName:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mDefault:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mMandatory:Z

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public record(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mMandatory:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mDefault:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mMandatory:Z

    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mDefault:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Uuid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", IsPrimary:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", Filepath:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
