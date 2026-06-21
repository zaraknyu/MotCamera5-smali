.class public final Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final featuresListOrdered:Ljava/util/LinkedHashSet;


# instance fields
.field public final mHdrFeatureSetStrList:Ljava/util/ArrayList;

.field public final mSceneOverrideSettingList:Ljava/util/ArrayList;

.field public final validStatesForFeatures:Ljava/util/Set;

.field public final validStatesForHDR:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "beauty"

    const-string v2, "active_photo"

    const-string v3, "hdr"

    const-string v4, "nv"

    const-string v5, "flash"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->featuresListOrdered:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->mHdrFeatureSetStrList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->mSceneOverrideSettingList:Ljava/util/ArrayList;

    const-string v0, "auto_off"

    const-string v1, "default"

    const-string v2, "on"

    const-string v3, "off"

    const-string v4, "auto_on"

    invoke-static {v1, v2, v3, v4, v0}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->validStatesForHDR:Ljava/util/Set;

    invoke-static {v2, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->validStatesForFeatures:Ljava/util/Set;

    :try_start_0
    const-string v0, "hdr_feature_set"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->featuresListOrdered:Ljava/util/LinkedHashSet;

    invoke-virtual {v8, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v6, v7}, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->checkFeatureHasValidState(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/motorola/camera/IqConfigManager;->mFeatureSeparatorChar:Ljava/lang/Character;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/motorola/camera/IqConfigManager;->mFeatureStateJoinChar:Ljava/lang/Character;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/json/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Feature \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" included in hdr_feature_setis not accepted"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-interface {v5}, Ljava/lang/CharSequence;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hdr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hdr_default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->mHdrFeatureSetStrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->mHdrFeatureSetStrList:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->orderHdrFeatureSetString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "hdr_feature_set is not in a correct format of contents or don\'t have \"hdr\" tag."

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string/jumbo v0, "scene_selection_parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->mSceneOverrideSettingList:Ljava/util/ArrayList;

    new-instance v2, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->mHdrFeatureSetStrList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "mHdrFeatureSetStrList is empty!"

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const-string p1, "IqConfigManager"

    const-string v0, "Error parsing Scene Override Setting By Hdr Feature Set: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static orderHdrFeatureSetString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->featuresListOrdered:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/motorola/camera/IqConfigManager;->mFeatureSeparatorChar:Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    :goto_1
    invoke-virtual {p0, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ne v6, v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4

    sget-object v1, Lcom/motorola/camera/IqConfigManager;->mFeatureSeparatorChar:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 p0, p0, -0x1

    if-ne v1, p0, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkFeatureHasValidState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "State \""

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->validStatesForHDR:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "\" added in hdr_feature_set for HDR is not accepted"

    invoke-static {v1, p2, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSettingByHdrFeatureSet;->validStatesForFeatures:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p0, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" added in hdr_feature_set for feature \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not accepted"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
