.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isRecommended:Z

.field public isSelected:Z

.field public final sizeValue:Landroid/util/Size;

.field public final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isRecommended:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isSelected:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
