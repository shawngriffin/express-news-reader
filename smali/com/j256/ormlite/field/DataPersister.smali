.class public interface abstract Lcom/j256/ormlite/field/DataPersister;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/field/FieldConverter;


# virtual methods
.method public abstract convertIdNumber(Ljava/lang/Number;)Ljava/lang/Object;
.end method

.method public abstract dataIsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract generateId()Ljava/lang/Object;
.end method

.method public abstract getAssociatedClasses()[Ljava/lang/Class;
.end method

.method public abstract getDefaultWidth()I
.end method

.method public abstract isAppropriateId()Z
.end method

.method public abstract isArgumentHolderRequired()Z
.end method

.method public abstract isComparable()Z
.end method

.method public abstract isEscapedDefaultValue()Z
.end method

.method public abstract isEscapedValue()Z
.end method

.method public abstract isPrimitive()Z
.end method

.method public abstract isSelfGeneratedId()Z
.end method

.method public abstract isValidForField(Ljava/lang/reflect/Field;)Z
.end method

.method public abstract isValidForVersion()Z
.end method

.method public abstract isValidGeneratedType()Z
.end method

.method public abstract makeConfigObject(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
.end method

.method public abstract moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;
.end method
