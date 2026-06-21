.class public abstract Lcom/motorola/camera/shared/DeviceProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mSystemProperty:Ljava/lang/String;

    iget v1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mValue:I

    invoke-static {v1, v0}, Lcom/motorola/camera/shared/SystemSetting;->getInt(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mSet:Z

    :cond_0
    iget p0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mValue:I

    return p0
.end method

.method public static getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    :try_start_0
    const-string v3, "get"

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/motorola/camera/shared/SystemSetting;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    const-string v2, "SystemSetting"

    const-string v3, "getString"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :goto_2
    iput-object v1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSet:Z

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    return-object p0
.end method
