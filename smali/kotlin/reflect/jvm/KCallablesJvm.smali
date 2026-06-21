.class public abstract Lkotlin/reflect/jvm/KCallablesJvm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static zza:Lcom/google/android/gms/tasks/zzb;


# direct methods
.method public static final isAccessible(Lkotlin/reflect/KCallable;)Z
    .locals 4

    instance-of v0, p0, Lkotlin/reflect/KMutableProperty;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KProperty;

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_14

    invoke-interface {v0}, Lkotlin/reflect/KProperty;->getGetter()Lkotlin/reflect/KProperty$Getter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_14

    check-cast p0, Lkotlin/reflect/KMutableProperty;

    invoke-interface {p0}, Lkotlin/reflect/KMutableProperty;->getSetter()Lkotlin/reflect/KMutableProperty$Setter;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-eqz p0, :cond_14

    goto/16 :goto_f

    :cond_3
    instance-of v0, p0, Lkotlin/reflect/KProperty;

    if-eqz v0, :cond_6

    check-cast p0, Lkotlin/reflect/KProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_14

    invoke-interface {p0}, Lkotlin/reflect/KProperty;->getGetter()Lkotlin/reflect/KProperty$Getter;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_4

    :cond_5
    move p0, v1

    :goto_4
    if-eqz p0, :cond_14

    goto/16 :goto_f

    :cond_6
    instance-of v0, p0, Lkotlin/reflect/KProperty$Getter;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KProperty$Getter;

    invoke-interface {v0}, Lkotlin/reflect/KProperty$Accessor;->getProperty()Lkotlin/reflect/KProperty;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_5
    if-eqz v0, :cond_14

    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_6

    :cond_8
    move p0, v1

    :goto_6
    if-eqz p0, :cond_14

    goto/16 :goto_f

    :cond_9
    instance-of v0, p0, Lkotlin/reflect/KMutableProperty$Setter;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KMutableProperty$Setter;

    invoke-interface {v0}, Lkotlin/reflect/KProperty$Accessor;->getProperty()Lkotlin/reflect/KProperty;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    goto :goto_7

    :cond_a
    move v0, v1

    :goto_7
    if-eqz v0, :cond_14

    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_8

    :cond_b
    move p0, v1

    :goto_8
    if-eqz p0, :cond_14

    goto/16 :goto_f

    :cond_c
    instance-of v0, p0, Lkotlin/reflect/KFunction;

    if-eqz v0, :cond_15

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KFunction;

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2

    goto :goto_9

    :cond_d
    move v2, v1

    :goto_9
    if-eqz v2, :cond_14

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKCallableImpl(Lkotlin/reflect/KCallable;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_a

    :cond_e
    move-object p0, v2

    :goto_a
    instance-of v3, p0, Ljava/lang/reflect/AccessibleObject;

    if-eqz v3, :cond_f

    check-cast p0, Ljava/lang/reflect/AccessibleObject;

    goto :goto_b

    :cond_f
    move-object p0, v2

    :goto_b
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_c

    :cond_10
    move p0, v1

    :goto_c
    if-eqz p0, :cond_14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKCallableImpl(Lkotlin/reflect/KCallable;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_d

    :cond_11
    move-object p0, v2

    :goto_d
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_12

    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/Constructor;

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_e

    :cond_13
    move p0, v1

    :goto_e
    if-eqz p0, :cond_14

    :goto_f
    return v1

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown callable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
